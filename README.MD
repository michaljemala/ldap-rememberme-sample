Remember-me autentifikacia:
---------------------------

* vytvori sa specialna cookie s nazvom 'SPRING_SECURITY_REMEMBER_ME_COOKIE'

* hodnota H tejto cookie sa nastavi nasledovne:
  H = HEX(MD5(<userName>:<tokenExpirationTime>:<password>:<key>)), kde
    userName - prihlasovacie meno pouzivatela
    tokenExpirationTime - by default 2 tyzdne v ms
    password - heslo pouzivatela
    key - by default nahodne vygenerovany kluc, moze sa zadat na <remember-me> elemente v Spring Security configu
    MD5 - md5 hash funckia
    HEX - funckia char[] org.springframework.security.crypto.codec.Hex.encode(byte[] bytes)

* pre vyskusanie staci vo Firebugu zmazat JSESSIONID a zachovat SPRING_SECURITY_REMEMBER_ME_COOKIE cookie a refreshnut stranku

* pocas requestu je identita pouzivatela znovu-vytvorena po dekodovani remeber-me cookie a je nastavena do security contextu
