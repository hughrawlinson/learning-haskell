module Main where

import Network.Socket
import System.IO
import Control.Monad (forever, liftM)
import Control.Monad.Loops (whileM_)

port = 5556
host = "127.0.0.1"

main = withSocketsDo $ do
        s <- socket AF_INET Datagram defaultProtocol
        hostAddr <- inet_addr host
        forever $ do
                msg <- getLine
                sendMessage msg s hostAddr
        sClose s
        return ()

sendMessage msg s hostAddr = do
                        sendTo s (msg ++ "\n") (SockAddrInet port hostAddr)
