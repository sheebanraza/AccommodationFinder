package service;

import facebook4j.*;
import facebook4j.auth.AccessToken;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/**
 * Created by Sheeban on 11/17/2015.
 */

@Component
public class AccommodationFinderServiceImpl implements AccommodationFinderService {

    @Override
    public void checkUser() throws FacebookException {
        Facebook facebook = new FacebookFactory().getInstance();
        facebook.setOAuthAppId("139128016447758", "9ba476f2be0a3e1209302503ecde6447");
        facebook.setOAuthAccessToken(new AccessToken("CAACEdEose0cBANKBA0VnZC15EEhSANViGda3TEdB2LGj36gdjsJZAKxKYzppZAl9xZBLTrjddXAWBOyBJuQDUmKGbAYAKSvpeZC0GQWmZA7q9pL3FjwrMFq0SDfS8A7uPK7jvfCF2UFCe4BfZC0nYsKkGyNDdEjRSI9PhZCHlFZCWYni1EXjjWgni5xpyPaCIWQ5LDPiflZBxRZAKF9kWcHqXvU"));
        ResponseList<Post> feeds = facebook.getGroupFeed("1650659058522281"); //Housing near San Jose State University
        List<String> messageLists = new ArrayList<String>();
        List<String> prices = new ArrayList<String>();
        Integer sanfernandoCount = 0, colonnadeCount = 0, lagacyCount = 0, avalon = 0, museum = 0;
        for (Post post : feeds) {
            String message = post.getMessage();
            if(message!=null && message.contains("$")) {
                int index = message.indexOf("$");
                String amount = "";
                for (int i = index + 1; i < message.length() - 1; i++) {
                    Character c = message.charAt(i);
                    if (Character.isDigit(c)) {
                        amount += message.charAt(i);
                    }
                    if (c.equals(' '))
                        break;
                    prices.add(amount);

                }

                if(message.contains("101") || message.contains("San Fernando") || message.contains("san Fernando"))
                    sanfernandoCount+=1;
                if(message.contains("Colonnade") || message.contains("Colonade"))
                    colonnadeCount+=1;
                if(message.contains("legacy") || message.contains("Legacy"))
                    lagacyCount+=1;
                if(message.contains("avalon") || message.contains("Avalon"))
                    avalon+=1;
                if(message.contains("Park") || message.contains("Museum"))
                    museum+=1;
                messageLists.add(message);
            }
        }



        System.out.print(feeds);
    }

}