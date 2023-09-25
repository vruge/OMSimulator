-- status: correct
-- teardown_command: rm -rf importStartValues1_lua/
-- linux: yes
-- mingw32: yes
-- mingw64: yes
-- win: yes
-- mac: no

oms_setCommandLineOption("--suppressPath=true")

oms_setTempDirectory("./importStartValues1_lua/")
oms_setWorkingDirectory("./importStartValues1_lua/")

oms_importFile("../../resources/importStartValues1.ssp");

src1 = oms_exportSnapshot("importStartValues")
print(src1)

oms_setStopTime("importStartValues", 2)

oms_instantiate("importStartValues")

oms_initialize("importStartValues")
oms_simulate("importStartValues")

oms_terminate("importStartValues")
oms_delete("importStartValues")


-- Result:
-- warning: invalid "SystemStructure.ssd" detected in file "../../resources/importStartValues1.ssp" at line: 72 column: 33, element 'Elements' is not allowed for content model '((Component|SignalDictionaryReference|System))'
-- warning: "SystemStructure.ssd" does not conform to the SSP standard schema
-- warning: Wrong/deprecated content detected but successfully loaded. Please re-export the SSP file to avoid this message.
-- warning: Wrong/deprecated content detected but successfully loaded. Please re-export the SSP file to avoid this message.
-- warning: Wrong/deprecated content detected but successfully loaded. Please re-export the SSP file to avoid this message.
-- warning: Wrong/deprecated content detected but successfully loaded. Please re-export the SSP file to avoid this message.
-- warning: Wrong/deprecated content detected but successfully loaded. Please re-export the SSP file to avoid this message.
-- <?xml version="1.0"?>
-- <oms:snapshot
--   xmlns:oms="https://raw.githubusercontent.com/OpenModelica/OMSimulator/master/schema/oms.xsd"
--   partial="false">
--   <oms:file
--     name="SystemStructure.ssd">
--     <ssd:SystemStructureDescription
--       xmlns:ssc="http://ssp-standard.org/SSP1/SystemStructureCommon"
--       xmlns:ssd="http://ssp-standard.org/SSP1/SystemStructureDescription"
--       xmlns:ssv="http://ssp-standard.org/SSP1/SystemStructureParameterValues"
--       xmlns:ssm="http://ssp-standard.org/SSP1/SystemStructureParameterMapping"
--       xmlns:ssb="http://ssp-standard.org/SSP1/SystemStructureSignalDictionary"
--       xmlns:oms="https://raw.githubusercontent.com/OpenModelica/OMSimulator/master/schema/oms.xsd"
--       name="importStartValues"
--       version="1.0">
--       <ssd:System
--         name="root">
--         <ssd:Connectors>
--           <ssd:Connector
--             name="C1"
--             kind="input">
--             <ssc:Real />
--           </ssd:Connector>
--           <ssd:Connector
--             name="C2"
--             kind="input">
--             <ssc:Real />
--           </ssd:Connector>
--         </ssd:Connectors>
--         <ssd:ParameterBindings>
--           <ssd:ParameterBinding>
--             <ssd:ParameterValues>
--               <ssv:ParameterSet
--                 version="1.0"
--                 name="parameters">
--                 <ssv:Parameters>
--                   <ssv:Parameter
--                     name="C2">
--                     <ssv:Real
--                       value="-100" />
--                   </ssv:Parameter>
--                 </ssv:Parameters>
--               </ssv:ParameterSet>
--             </ssd:ParameterValues>
--           </ssd:ParameterBinding>
--           <ssd:ParameterBinding
--             source="resources/Root.ssv" />
--         </ssd:ParameterBindings>
--         <ssd:ParameterBindings>
--           <ssd:ParameterBinding
--             source="resources/System1.ssv" />
--         </ssd:ParameterBindings>
--         <ssd:Elements>
--           <ssd:System
--             name="System1">
--             <ssd:Connectors>
--               <ssd:Connector
--                 name="C1"
--                 kind="input">
--                 <ssc:Real />
--               </ssd:Connector>
--               <ssd:Connector
--                 name="C2"
--                 kind="parameter">
--                 <ssc:Real />
--               </ssd:Connector>
--               <ssd:Connector
--                 name="k1"
--                 kind="parameter">
--                 <ssc:Real />
--               </ssd:Connector>
--               <ssd:Connector
--                 name="C3"
--                 kind="output">
--                 <ssc:Real />
--               </ssd:Connector>
--             </ssd:Connectors>
--             <ssd:ParameterBindings>
--               <ssd:ParameterBinding>
--                 <ssd:ParameterValues>
--                   <ssv:ParameterSet
--                     version="1.0"
--                     name="parameters">
--                     <ssv:Parameters>
--                       <ssv:Parameter
--                         name="k1">
--                         <ssv:Real
--                           value="-200" />
--                       </ssv:Parameter>
--                     </ssv:Parameters>
--                   </ssv:ParameterSet>
--                 </ssd:ParameterValues>
--               </ssd:ParameterBinding>
--             </ssd:ParameterBindings>
--             <ssd:Annotations>
--               <ssc:Annotation
--                 type="org.openmodelica">
--                 <oms:Annotations>
--                   <oms:SimulationInformation>
--                     <oms:VariableStepSolver
--                       description="euler"
--                       absoluteTolerance="0.0001"
--                       relativeTolerance="0.0001"
--                       minimumStepSize="0.0001"
--                       maximumStepSize="0.1"
--                       initialStepSize="0.0001" />
--                   </oms:SimulationInformation>
--                 </oms:Annotations>
--               </ssc:Annotation>
--             </ssd:Annotations>
--           </ssd:System>
--         </ssd:Elements>
--         <ssd:Annotations>
--           <ssc:Annotation
--             type="org.openmodelica">
--             <oms:Annotations>
--               <oms:SimulationInformation>
--                 <oms:FixedStepMaster
--                   description="oms-ma"
--                   stepSize="0.001000"
--                   absoluteTolerance="0.000100"
--                   relativeTolerance="0.000100" />
--               </oms:SimulationInformation>
--             </oms:Annotations>
--           </ssc:Annotation>
--         </ssd:Annotations>
--       </ssd:System>
--       <ssd:DefaultExperiment
--         startTime="0.000000"
--         stopTime="1.000000">
--         <ssd:Annotations>
--           <ssc:Annotation
--             type="org.openmodelica">
--             <oms:Annotations>
--               <oms:SimulationInformation
--                 resultFile="importStartValues1_res.mat"
--                 loggingInterval="0.000000"
--                 bufferSize="10"
--                 signalFilter="resources/signalFilter.xml" />
--             </oms:Annotations>
--           </ssc:Annotation>
--         </ssd:Annotations>
--       </ssd:DefaultExperiment>
--     </ssd:SystemStructureDescription>
--   </oms:file>
--   <oms:file
--     name="resources/Root.ssv">
--     <ssv:ParameterSet
--       xmlns:ssc="http://ssp-standard.org/SSP1/SystemStructureCommon"
--       xmlns:ssv="http://ssp-standard.org/SSP1/SystemStructureParameterValues"
--       version="1.0"
--       name="parameters">
--       <ssv:Parameters>
--         <ssv:Parameter
--           name="C1">
--           <ssv:Real
--             value="-10.5" />
--         </ssv:Parameter>
--       </ssv:Parameters>
--     </ssv:ParameterSet>
--   </oms:file>
--   <oms:file
--     name="resources/System1.ssv">
--     <ssv:ParameterSet
--       xmlns:ssc="http://ssp-standard.org/SSP1/SystemStructureCommon"
--       xmlns:ssv="http://ssp-standard.org/SSP1/SystemStructureParameterValues"
--       version="1.0"
--       name="parameters">
--       <ssv:Parameters>
--         <ssv:Parameter
--           name="System1.C2">
--           <ssv:Real
--             value="3.5" />
--         </ssv:Parameter>
--         <ssv:Parameter
--           name="System1.C1">
--           <ssv:Real
--             value="-13.5" />
--         </ssv:Parameter>
--       </ssv:Parameters>
--     </ssv:ParameterSet>
--   </oms:file>
--   <oms:file
--     name="resources/signalFilter.xml">
--     <oms:SignalFilter
--       version="1.0">
--       <oms:Variable
--         name="importStartValues.root.C1"
--         type="Real"
--         kind="input" />
--       <oms:Variable
--         name="importStartValues.root.C2"
--         type="Real"
--         kind="input" />
--       <oms:Variable
--         name="importStartValues.root.System1.C1"
--         type="Real"
--         kind="input" />
--       <oms:Variable
--         name="importStartValues.root.System1.C2"
--         type="Real"
--         kind="parameter" />
--       <oms:Variable
--         name="importStartValues.root.System1.k1"
--         type="Real"
--         kind="parameter" />
--       <oms:Variable
--         name="importStartValues.root.System1.C3"
--         type="Real"
--         kind="output" />
--     </oms:SignalFilter>
--   </oms:file>
-- </oms:snapshot>
-- 
-- info:    model doesn't contain any continuous state
-- info:    Result file: importStartValues1_res.mat (bufferSize=10)
-- info:    7 warnings
-- info:    0 errors
-- endResult
