module Define(define,
              -- community_engagement,
              testing_and_deployment,
              ooda_loop,
              configuration_management,
              implementation_driver) where  
import Data.IORef

type Name = String
type Value = String 

data Scope = Scope {
  parent :: Maybe Scope,
  bindings :: IORef [(Name, Value)]
}
fixme x= True
observe=(fixme)
orient=fixme
decide=fixme
act=fixme
ooda_loop= [observe , orient, decide, act]
configuration_management=(fixme "Define derivations for system configuration")

--;; Define testing and deployment logic
testing_and_deployment=(fixme "Define testing and deployment procedures")

implementation_driver=(fixme "Define smart contract_driven implementation driver")

newScope :: Maybe Scope -> IO Scope
newScope parent = Scope parent <$> newIORef []

define :: Name -> Value -> Scope -> IO ()
define name value scope = modifyIORef' (bindings scope) ((name, value):)

-- lookup2 :: Name -> Scope -> IO (Maybe Value)
-- lookup2 name scope = do
--   bindings' <- readIORef (bindings scope)
--   case lookup2 name bindings' of
--     Just value -> return (Just value)
--     Nothing -> case parent scope of
--       Just parent' -> lookup2 name parent'
--       Nothing -> return Nothing
