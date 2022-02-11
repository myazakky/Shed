{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE ViewPatterns      #-}
module Foundation where

import Yesod

data App = App

mkYesodData "App" $(parseRoutesFile "routes.yesodroutes")

instance Yesod App
