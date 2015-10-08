{-# LANGUAGE OverloadedStrings #-}
import Network
import qualified Data.ByteString as S

main :: IO ()
main = do
    h <- connectTo "www.stackage.org" $ PortNumber 80
    S.hPut h "GET / HTTP/1.1\r\nHost: www.stackage.org\r\n\r\n"
    S.hGetSome h 4096 >>= print
