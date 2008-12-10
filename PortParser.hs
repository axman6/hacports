module PortParser where
import Data.Maybe
import Data.Ix
import Data.Array

data PortAttr =   
    PortSystem Double
  | Name String
  | Version String
  | Revision Integer
  | Categories [String]
  | Maintainers [String]
  | Platforms [String]
  | Description String
  | LongDesc String
  | HomePage URL
  | MasterSites String
  | Epoch String
  | Prefix String
  | UseBzip2 Bool
  | Checksums [(CSum,String)]
  | Distfiles [String]
  | Universal Bool
  | PatchFiles [String]
  | PostPatch [String]
  | DependLibs [String]
  deriving (Eq,Ix,Show)

data CSum = MD5 | SHA1 | RMD100  

         

type Port = [PortAttr]