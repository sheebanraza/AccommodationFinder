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
        facebook.setOAuthAppId("", "");
        facebook.setOAuthAccessToken(new AccessToken(""));
        ResponseList<Post> feeds = facebook.getGroupFeed(""); //Housing near San Jose State University
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