module DataType where

data Account = Account {
  url :: String,
  displayName :: String,
  service :: String
}

data Me = Me {
  name :: String,
  birthday :: (Integer, Int, Int), -- (year, month, day)
  accounts :: [Account]
}
