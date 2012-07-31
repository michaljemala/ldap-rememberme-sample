Remember-me Authentication Sample
==================================
Prerequisities
--------------
* install and configure an LDAP server, e.g. Apache DS 2.x

* import ldif files to initialize identities


Background
----------
* a special HTTP cookie named SPRING_SECURITY_REMEMBER_ME_COOKIE is created

* the value H of this cookie is computed as follows:

  H = HEX(MD5(userName:tokenExpirationTime:password:key)), where

    tokenExpirationTime - token expiration, by default 2 weeks
    
    key - a random secret, can be specified by 'key' attribute of remember-me element
    
    HEX - char[] org.springframework.security.crypto.codec.Hex.encode(byte[] bytes)

* to validate it works just remoce session cookie using Firebug (keep SPRING_SECURITY_REMEMBER_ME_COOKIE cookie) and refresh

* during the subsequent reuqest the user authentication token is recreted based on the info extracted from SPRING_SECURITY_REMEMBER_ME_COOKIE cookie
