{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
module Home where

import Yesod
import Foundation
import DataType

me = Me{
    name = "みやざき",
    birthday = (2004, 4, 5),
    accounts = [
        (Account "https://scrapbox.io/myazakky" "myazakky" "Scrapbox")
    ]}

getHomeR :: Handler Html
getHomeR = defaultLayout
    [whamlet|
        <h1> #{name me}の小屋
            <h3> profile
                <li> name: #{name me}
                <a href=#{url $ head $ accounts me}> #{displayName $ head $ accounts me}
                
    |]
