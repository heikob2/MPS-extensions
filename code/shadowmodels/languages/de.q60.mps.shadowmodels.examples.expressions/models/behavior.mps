<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:70e02a2e-ae8f-4ef2-bcd1-2d85e8689f6a(de.q60.mps.shadowmodels.examples.expressions.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="nup6" ref="r:1539980b-b231-4c7d-8cde-acae8ba318f2(de.q60.mps.shadowmodels.examples.expressions.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="5864038008284099149" name="isStatic" index="2Ki8OM" />
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204834851141" name="jetbrains.mps.lang.smodel.structure.PoundExpression" flags="ng" index="25Kdxt">
        <child id="1204834868751" name="expression" index="25KhWn" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="13h7C7" id="3JPN2vWj3K5">
    <property role="3GE5qa" value="fun" />
    <ref role="13h7C2" to="nup6:2frx7BFaCHd" resolve="Function" />
    <node concept="13hLZK" id="3JPN2vWj3K6" role="13h7CW">
      <node concept="3clFbS" id="3JPN2vWj3K7" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3JPN2vWj3Kg" role="13h7CS">
      <property role="TrG5h" value="getScope" />
      <ref role="13i0hy" to="tpcu:52_Geb4QDV$" resolve="getScope" />
      <node concept="3Tm1VV" id="3JPN2vWj3Kh" role="1B3o_S" />
      <node concept="3clFbS" id="3JPN2vWj3Kq" role="3clF47">
        <node concept="3clFbF" id="3JPN2vWj3K_" role="3cqZAp">
          <node concept="2YIFZM" id="3JPN2vWj4g7" role="3clFbG">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <node concept="2OqwBi" id="3JPN2vWj4vP" role="37wK5m">
              <node concept="13iPFW" id="3JPN2vWj4i0" role="2Oq$k0" />
              <node concept="3Tsc0h" id="3JPN2vWj4L1" role="2OqNvi">
                <ref role="3TtcxE" to="nup6:2frx7BFaCIB" resolve="args" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3JPN2vWj3Kr" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="3JPN2vWj3Ks" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3JPN2vWj3Kt" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="3JPN2vWj3Ku" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="3JPN2vWj3Kv" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1s_GFdUelng">
    <property role="3GE5qa" value="bin" />
    <ref role="13h7C2" to="nup6:1s_GFdUcC$m" resolve="BinaryExpr" />
    <node concept="13hLZK" id="1s_GFdUelnh" role="13h7CW">
      <node concept="3clFbS" id="1s_GFdUelni" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1s_GFdUelnr" role="13h7CS">
      <property role="TrG5h" value="isLeftAssociative" />
      <property role="13i0it" value="true" />
      <property role="2Ki8OM" value="true" />
      <node concept="3Tm1VV" id="1s_GFdUelns" role="1B3o_S" />
      <node concept="10P_77" id="1s_GFdUelnJ" role="3clF45" />
      <node concept="3clFbS" id="1s_GFdUelnu" role="3clF47">
        <node concept="3clFbF" id="1s_GFdUelpk" role="3cqZAp">
          <node concept="3clFbT" id="1s_GFdUelpj" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1s_GFdUeltk" role="13h7CS">
      <property role="TrG5h" value="prioLevel" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <property role="2Ki8OM" value="true" />
      <node concept="3Tm1VV" id="1s_GFdUeltl" role="1B3o_S" />
      <node concept="10Oyi0" id="1s_GFdUeltZ" role="3clF45" />
      <node concept="3clFbS" id="1s_GFdUeltn" role="3clF47" />
    </node>
  </node>
  <node concept="13h7C7" id="1s_GFdUeOWY">
    <property role="3GE5qa" value="bin.arith" />
    <ref role="13h7C2" to="nup6:1s_GFdUeOW$" resolve="PlusExpr" />
    <node concept="13hLZK" id="1s_GFdUeOWZ" role="13h7CW">
      <node concept="3clFbS" id="1s_GFdUeOX0" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1s_GFdUeOX9" role="13h7CS">
      <property role="TrG5h" value="prioLevel" />
      <property role="2Ki8OM" value="true" />
      <ref role="13i0hy" node="1s_GFdUeltk" resolve="prioLevel" />
      <node concept="3Tm1VV" id="1s_GFdUeOXa" role="1B3o_S" />
      <node concept="3clFbS" id="1s_GFdUeOXd" role="3clF47">
        <node concept="3clFbF" id="1s_GFdUeOXw" role="3cqZAp">
          <node concept="3cmrfG" id="1s_GFdUeOXv" role="3clFbG">
            <property role="3cmrfH" value="1000" />
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="1s_GFdUeOXe" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="4vHhYRO2jzC">
    <property role="3GE5qa" value="cond" />
    <ref role="13h7C2" to="nup6:2frx7BFaCIG" resolve="IfExpr" />
    <node concept="13hLZK" id="4vHhYRO2jzD" role="13h7CW">
      <node concept="3clFbS" id="4vHhYRO2jzE" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4vHhYRO2jzN" role="13h7CS">
      <property role="TrG5h" value="needsVerticalLayout" />
      <node concept="3Tm1VV" id="4vHhYRO2jzO" role="1B3o_S" />
      <node concept="10P_77" id="4vHhYRO2j$3" role="3clF45" />
      <node concept="3clFbS" id="4vHhYRO2jzQ" role="3clF47">
        <node concept="3clFbF" id="4vHhYRO2j_f" role="3cqZAp">
          <node concept="22lmx$" id="4vHhYRO2m17" role="3clFbG">
            <node concept="22lmx$" id="4vHhYRO2luD" role="3uHU7B">
              <node concept="2OqwBi" id="4vHhYRO2ksW" role="3uHU7B">
                <node concept="2OqwBi" id="4vHhYRO2jKD" role="2Oq$k0">
                  <node concept="13iPFW" id="4vHhYRO2j_e" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4vHhYRO2jXV" role="2OqNvi">
                    <ref role="3Tt5mk" to="nup6:2frx7BFaCKu" resolve="cond" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="4vHhYRO2l4o" role="2OqNvi">
                  <node concept="chp4Y" id="4vHhYRO2l8J" role="cj9EA">
                    <ref role="cht4Q" to="nup6:4vHhYRO2dEE" resolve="IBigExpr" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4vHhYRO2lzw" role="3uHU7w">
                <node concept="2OqwBi" id="4vHhYRO2lzx" role="2Oq$k0">
                  <node concept="13iPFW" id="4vHhYRO2lzy" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4vHhYRO2msP" role="2OqNvi">
                    <ref role="3Tt5mk" to="nup6:2frx7BFaCKx" resolve="thenPart" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="4vHhYRO2lz$" role="2OqNvi">
                  <node concept="chp4Y" id="4vHhYRO2lz_" role="cj9EA">
                    <ref role="cht4Q" to="nup6:4vHhYRO2dEE" resolve="IBigExpr" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4vHhYRO2m6P" role="3uHU7w">
              <node concept="2OqwBi" id="4vHhYRO2neK" role="2Oq$k0">
                <node concept="2OqwBi" id="4vHhYRO2m6Q" role="2Oq$k0">
                  <node concept="13iPFW" id="4vHhYRO2m6R" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4vHhYRO2mMD" role="2OqNvi">
                    <ref role="3Tt5mk" to="nup6:2frx7BFaCKA" resolve="elsePart" />
                  </node>
                </node>
                <node concept="3TrEf2" id="4vHhYRO2nuv" role="2OqNvi">
                  <ref role="3Tt5mk" to="nup6:2frx7BFaCO7" resolve="expr" />
                </node>
              </node>
              <node concept="1mIQ4w" id="4vHhYRO2m6T" role="2OqNvi">
                <node concept="chp4Y" id="4vHhYRO2m6U" role="cj9EA">
                  <ref role="cht4Q" to="nup6:4vHhYRO2dEE" resolve="IBigExpr" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="3qfy$Tioz9U">
    <property role="3GE5qa" value="bin.arith" />
    <ref role="13h7C2" to="nup6:3qfy$Tioz9w" resolve="MinusExpr" />
    <node concept="13hLZK" id="3qfy$Tioz9V" role="13h7CW">
      <node concept="3clFbS" id="3qfy$Tioz9W" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3qfy$Tioza5" role="13h7CS">
      <property role="TrG5h" value="prioLevel" />
      <property role="2Ki8OM" value="true" />
      <ref role="13i0hy" node="1s_GFdUeltk" resolve="prioLevel" />
      <node concept="3Tm1VV" id="3qfy$Tioza6" role="1B3o_S" />
      <node concept="3clFbS" id="3qfy$Tioza9" role="3clF47">
        <node concept="3clFbF" id="3qfy$Tiozao" role="3cqZAp">
          <node concept="3cmrfG" id="3qfy$Tiozan" role="3clFbG">
            <property role="3cmrfH" value="1000" />
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="3qfy$Tiozaa" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="3qfy$Tiozkd">
    <property role="3GE5qa" value="bin.arith" />
    <ref role="13h7C2" to="nup6:3qfy$Tiozjq" resolve="MulExpr" />
    <node concept="13hLZK" id="3qfy$Tiozke" role="13h7CW">
      <node concept="3clFbS" id="3qfy$Tiozkf" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3qfy$Tiozko" role="13h7CS">
      <property role="TrG5h" value="prioLevel" />
      <property role="2Ki8OM" value="true" />
      <ref role="13i0hy" node="1s_GFdUeltk" resolve="prioLevel" />
      <node concept="3Tm1VV" id="3qfy$Tiozkp" role="1B3o_S" />
      <node concept="3clFbS" id="3qfy$Tiozks" role="3clF47">
        <node concept="3clFbF" id="3qfy$TiozkF" role="3cqZAp">
          <node concept="3cmrfG" id="3qfy$TiozkE" role="3clFbG">
            <property role="3cmrfH" value="2000" />
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="3qfy$Tiozkt" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="3qfy$TioztU">
    <property role="3GE5qa" value="bin.arith" />
    <ref role="13h7C2" to="nup6:3qfy$Tioztw" resolve="DivExpr" />
    <node concept="13hLZK" id="3qfy$TioztV" role="13h7CW">
      <node concept="3clFbS" id="3qfy$TioztW" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3qfy$Tiozu5" role="13h7CS">
      <property role="TrG5h" value="prioLevel" />
      <property role="2Ki8OM" value="true" />
      <ref role="13i0hy" node="1s_GFdUeltk" resolve="prioLevel" />
      <node concept="3Tm1VV" id="3qfy$Tiozu6" role="1B3o_S" />
      <node concept="3clFbS" id="3qfy$Tiozu9" role="3clF47">
        <node concept="3clFbF" id="3qfy$Tiozuo" role="3cqZAp">
          <node concept="3cmrfG" id="3qfy$Tiozun" role="3clFbG">
            <property role="3cmrfH" value="2000" />
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="3qfy$Tiozua" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="3tIuEqjZmyh">
    <property role="3GE5qa" value="bin.comp" />
    <ref role="13h7C2" to="nup6:3tIuEqjZmxQ" resolve="BinaryComparisonExpr" />
    <node concept="13hLZK" id="3tIuEqjZmyi" role="13h7CW">
      <node concept="3clFbS" id="3tIuEqjZmyj" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3tIuEqjZmys" role="13h7CS">
      <property role="TrG5h" value="prioLevel" />
      <property role="2Ki8OM" value="true" />
      <ref role="13i0hy" node="1s_GFdUeltk" resolve="prioLevel" />
      <node concept="3Tm1VV" id="3tIuEqjZmyt" role="1B3o_S" />
      <node concept="3clFbS" id="3tIuEqjZmyw" role="3clF47">
        <node concept="3clFbF" id="3tIuEqjZmyJ" role="3cqZAp">
          <node concept="3cmrfG" id="3tIuEqjZmyI" role="3clFbG">
            <property role="3cmrfH" value="900" />
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="3tIuEqjZmyx" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="3tIuEqjZmQd">
    <property role="3GE5qa" value="bin.eq" />
    <ref role="13h7C2" to="nup6:3tIuEqjZmPN" resolve="BinaryEqExpr" />
    <node concept="13hLZK" id="3tIuEqjZmQe" role="13h7CW">
      <node concept="3clFbS" id="3tIuEqjZmQf" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3tIuEqjZmQo" role="13h7CS">
      <property role="TrG5h" value="prioLevel" />
      <property role="2Ki8OM" value="true" />
      <ref role="13i0hy" node="1s_GFdUeltk" resolve="prioLevel" />
      <node concept="3Tm1VV" id="3tIuEqjZmQp" role="1B3o_S" />
      <node concept="3clFbS" id="3tIuEqjZmQs" role="3clF47">
        <node concept="3clFbF" id="3tIuEqjZmQF" role="3cqZAp">
          <node concept="3cmrfG" id="3tIuEqjZmQE" role="3clFbG">
            <property role="3cmrfH" value="800" />
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="3tIuEqjZmQt" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="3tIuEqjZo2L">
    <property role="3GE5qa" value="bin.logical" />
    <ref role="13h7C2" to="nup6:3tIuEqjZo2n" resolve="LogicalAndExpr" />
    <node concept="13hLZK" id="3tIuEqjZo2M" role="13h7CW">
      <node concept="3clFbS" id="3tIuEqjZo2N" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3tIuEqjZo2W" role="13h7CS">
      <property role="TrG5h" value="prioLevel" />
      <property role="2Ki8OM" value="true" />
      <ref role="13i0hy" node="1s_GFdUeltk" resolve="prioLevel" />
      <node concept="3Tm1VV" id="3tIuEqjZo2X" role="1B3o_S" />
      <node concept="3clFbS" id="3tIuEqjZo30" role="3clF47">
        <node concept="3clFbF" id="3tIuEqjZo3f" role="3cqZAp">
          <node concept="3cmrfG" id="3tIuEqjZo3e" role="3clFbG">
            <property role="3cmrfH" value="750" />
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="3tIuEqjZo31" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="3tIuEqjZocF">
    <property role="3GE5qa" value="bin.logical" />
    <ref role="13h7C2" to="nup6:3tIuEqjZoch" resolve="LogicalOrExpr" />
    <node concept="13hLZK" id="3tIuEqjZocG" role="13h7CW">
      <node concept="3clFbS" id="3tIuEqjZocH" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3tIuEqjZocQ" role="13h7CS">
      <property role="TrG5h" value="prioLevel" />
      <property role="2Ki8OM" value="true" />
      <ref role="13i0hy" node="1s_GFdUeltk" resolve="prioLevel" />
      <node concept="3Tm1VV" id="3tIuEqjZocR" role="1B3o_S" />
      <node concept="3clFbS" id="3tIuEqjZocU" role="3clF47">
        <node concept="3clFbF" id="3tIuEqjZod9" role="3cqZAp">
          <node concept="3cmrfG" id="3tIuEqjZod8" role="3clFbG">
            <property role="3cmrfH" value="700" />
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="3tIuEqjZocV" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="3tIuEqk0nGD">
    <ref role="13h7C2" to="nup6:3tIuEqk0nG0" resolve="IStaticallyEquallably" />
    <node concept="13i0hz" id="3tIuEqk0ooI" role="13h7CS">
      <property role="TrG5h" value="compareForEquality" />
      <node concept="37vLTG" id="3tIuEqk0oqq" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3Tqbb2" id="3tIuEqk0oqr" role="1tU5fm">
          <ref role="ehGHo" to="nup6:3tIuEqk0nG0" resolve="IStaticallyEquallably" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3tIuEqk0ooJ" role="1B3o_S" />
      <node concept="10P_77" id="3tIuEqk0opf" role="3clF45" />
      <node concept="3clFbS" id="3tIuEqk0ooL" role="3clF47">
        <node concept="3clFbJ" id="3tIuEqk0oqC" role="3cqZAp">
          <node concept="3clFbC" id="3tIuEqk0o$9" role="3clFbw">
            <node concept="10Nm6u" id="3tIuEqk0o$g" role="3uHU7w" />
            <node concept="37vLTw" id="3tIuEqk0oqI" role="3uHU7B">
              <ref role="3cqZAo" node="3tIuEqk0oqq" resolve="other" />
            </node>
          </node>
          <node concept="3clFbS" id="3tIuEqk0oqE" role="3clFbx">
            <node concept="3cpWs6" id="3tIuEqk0o$C" role="3cqZAp">
              <node concept="3clFbT" id="3tIuEqk0o$H" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3tIuEqk0o_r" role="3cqZAp">
          <node concept="3clFbS" id="3tIuEqk0o_t" role="3clFbx">
            <node concept="3cpWs6" id="3tIuEqk0q4O" role="3cqZAp">
              <node concept="3clFbT" id="3tIuEqk0q4U" role="3cqZAk" />
            </node>
          </node>
          <node concept="3y3z36" id="3tIuEqk0pvx" role="3clFbw">
            <node concept="2OqwBi" id="3tIuEqk0pGt" role="3uHU7w">
              <node concept="13iPFW" id="3tIuEqk0pwf" role="2Oq$k0" />
              <node concept="2yIwOk" id="3tIuEqk0q43" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="3tIuEqk0oJm" role="3uHU7B">
              <node concept="37vLTw" id="3tIuEqk0oA2" role="2Oq$k0">
                <ref role="3cqZAo" node="3tIuEqk0oqq" resolve="other" />
              </node>
              <node concept="2yIwOk" id="3tIuEqk0p8A" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3tIuEqk0q5z" role="3cqZAp">
          <node concept="BsUDl" id="3tIuEqk0q6W" role="3cqZAk">
            <ref role="37wK5l" node="3tIuEqk0nGO" resolve="isEqualTo" />
            <node concept="37vLTw" id="3tIuEqk0q8c" role="37wK5m">
              <ref role="3cqZAo" node="3tIuEqk0oqq" resolve="other" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="3tIuEqk0nGO" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="isEqualTo" />
      <node concept="3Tmbuc" id="3tIuEqk0op4" role="1B3o_S" />
      <node concept="10P_77" id="3tIuEqk0nH4" role="3clF45" />
      <node concept="3clFbS" id="3tIuEqk0nGR" role="3clF47" />
      <node concept="37vLTG" id="3tIuEqk0nHS" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3Tqbb2" id="3tIuEqk0nHR" role="1tU5fm">
          <ref role="ehGHo" to="nup6:3tIuEqk0nG0" resolve="IStaticallyEquallably" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="3tIuEqk0nGE" role="13h7CW">
      <node concept="3clFbS" id="3tIuEqk0nGF" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="3tIuEqk0nIP">
    <property role="3GE5qa" value="types" />
    <ref role="13h7C2" to="nup6:1s_GFdUbhK6" resolve="BoolLit" />
    <node concept="13hLZK" id="3tIuEqk0nIQ" role="13h7CW">
      <node concept="3clFbS" id="3tIuEqk0nIR" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3tIuEqk0nJ0" role="13h7CS">
      <property role="TrG5h" value="isEqualTo" />
      <ref role="13i0hy" node="3tIuEqk0nGO" resolve="isEqualTo" />
      <node concept="3Tm1VV" id="3tIuEqk0nJ1" role="1B3o_S" />
      <node concept="3clFbS" id="3tIuEqk0nJ6" role="3clF47">
        <node concept="3SKdUt" id="3tIuEqk0qdx" role="3cqZAp">
          <node concept="3SKdUq" id="3tIuEqk0qdz" role="3SKWNk">
            <property role="3SKdUp" value="only get here if concept is the same" />
          </node>
        </node>
        <node concept="3clFbF" id="3tIuEqk0q9y" role="3cqZAp">
          <node concept="3clFbT" id="3tIuEqk0q9x" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3tIuEqk0nJ7" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3Tqbb2" id="3tIuEqk0nJ8" role="1tU5fm">
          <ref role="ehGHo" to="nup6:3tIuEqk0nG0" resolve="IStaticallyEquallably" />
        </node>
      </node>
      <node concept="10P_77" id="3tIuEqk0nJ9" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="3tIuEqk0r31">
    <property role="3GE5qa" value="types" />
    <ref role="13h7C2" to="nup6:1s_GFdUbhUJ" resolve="NumLit" />
    <node concept="13hLZK" id="3tIuEqk0r32" role="13h7CW">
      <node concept="3clFbS" id="3tIuEqk0r33" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3tIuEqk0r3c" role="13h7CS">
      <property role="TrG5h" value="isEqualTo" />
      <ref role="13i0hy" node="3tIuEqk0nGO" resolve="isEqualTo" />
      <node concept="3Tmbuc" id="3tIuEqk0r3d" role="1B3o_S" />
      <node concept="3clFbS" id="3tIuEqk0r3i" role="3clF47">
        <node concept="3clFbF" id="3tIuEqk0r7u" role="3cqZAp">
          <node concept="17R0WA" id="3tIuEqk0uha" role="3clFbG">
            <node concept="2OqwBi" id="3tIuEqk0v5r" role="3uHU7w">
              <node concept="1PxgMI" id="3tIuEqk0uFC" role="2Oq$k0">
                <node concept="chp4Y" id="3tIuEqk0uIB" role="3oSUPX">
                  <ref role="cht4Q" to="nup6:1s_GFdUbhUJ" resolve="NumLit" />
                </node>
                <node concept="37vLTw" id="3tIuEqk0unn" role="1m5AlR">
                  <ref role="3cqZAo" node="3tIuEqk0r3j" resolve="other" />
                </node>
              </node>
              <node concept="3TrcHB" id="3tIuEqk0wsw" role="2OqNvi">
                <ref role="3TsBF5" to="nup6:1s_GFdUbhUK" resolve="value" />
              </node>
            </node>
            <node concept="2OqwBi" id="3tIuEqk0riS" role="3uHU7B">
              <node concept="13iPFW" id="3tIuEqk0r7r" role="2Oq$k0" />
              <node concept="3TrcHB" id="3tIuEqk0rwc" role="2OqNvi">
                <ref role="3TsBF5" to="nup6:1s_GFdUbhUK" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3tIuEqk0r3j" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3Tqbb2" id="3tIuEqk0r3k" role="1tU5fm">
          <ref role="ehGHo" to="nup6:3tIuEqk0nG0" resolve="IStaticallyEquallably" />
        </node>
      </node>
      <node concept="10P_77" id="3tIuEqk0r3l" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="7iudlBAxoma">
    <ref role="13h7C2" to="nup6:7iudlBAxohL" resolve="UnaryExpr" />
    <node concept="13i0hz" id="4rZeNQ6Nh_5" role="13h7CS">
      <property role="TrG5h" value="priority" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <property role="2Ki8OM" value="true" />
      <node concept="3Tm1VV" id="4rZeNQ6Nh_6" role="1B3o_S" />
      <node concept="10Oyi0" id="4rZeNQ6Nh_7" role="3clF45" />
      <node concept="3clFbS" id="4rZeNQ6Nh_8" role="3clF47" />
    </node>
    <node concept="13i0hz" id="4rZeNQ6Nh_9" role="13h7CS">
      <property role="TrG5h" value="isLeftAssociative" />
      <property role="2Ki8OM" value="true" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="4rZeNQ6Nh_a" role="1B3o_S" />
      <node concept="10P_77" id="4rZeNQ6Nh_b" role="3clF45" />
      <node concept="3clFbS" id="4rZeNQ6Nh_c" role="3clF47">
        <node concept="3clFbF" id="4rZeNQ6Nh_d" role="3cqZAp">
          <node concept="3clFbT" id="4rZeNQ6Nh_e" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="7iudlBAxomb" role="13h7CW">
      <node concept="3clFbS" id="7iudlBAxomc" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="7iudlBAxqtm">
    <property role="3GE5qa" value="bin.logical" />
    <ref role="13h7C2" to="nup6:7iudlBAxoUw" resolve="LogicalNotExpr" />
    <node concept="13i0hz" id="4rZeNQ6Nh_T" role="13h7CS">
      <property role="TrG5h" value="priority" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <property role="2Ki8OM" value="true" />
      <ref role="13i0hy" node="4rZeNQ6Nh_5" resolve="priority" />
      <node concept="3Tm1VV" id="4rZeNQ6Nh_U" role="1B3o_S" />
      <node concept="3clFbS" id="4rZeNQ6Nh_X" role="3clF47">
        <node concept="3clFbF" id="4rZeNQ6NhA4" role="3cqZAp">
          <node concept="3cmrfG" id="4rZeNQ6NhA3" role="3clFbG">
            <property role="3cmrfH" value="1000" />
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="4rZeNQ6Nh_Y" role="3clF45" />
    </node>
    <node concept="13hLZK" id="7iudlBAxqtn" role="13h7CW">
      <node concept="3clFbS" id="7iudlBAxqto" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="7iudlBAyNyB">
    <ref role="13h7C2" to="nup6:2frx7BFaCHD" resolve="Expr" />
    <node concept="13hLZK" id="7iudlBAyNyC" role="13h7CW">
      <node concept="3clFbS" id="7iudlBAyNyD" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7iudlBAyNyM" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="7iudlBAyNyN" role="1B3o_S" />
      <node concept="17QB3L" id="7iudlBAyNz6" role="3clF45" />
      <node concept="3clFbS" id="7iudlBAyNyP" role="3clF47">
        <node concept="3clFbF" id="7iudlBAyNzV" role="3cqZAp">
          <node concept="3cpWs3" id="7iudlBAyQt7" role="3clFbG">
            <node concept="Xl_RD" id="7iudlBAyQta" role="3uHU7w">
              <property role="Xl_RC" value="&gt;" />
            </node>
            <node concept="3cpWs3" id="7iudlBAyNPG" role="3uHU7B">
              <node concept="Xl_RD" id="7iudlBAyNzU" role="3uHU7B">
                <property role="Xl_RC" value="&lt;" />
              </node>
              <node concept="2OqwBi" id="7iudlBAyOGK" role="3uHU7w">
                <node concept="2OqwBi" id="7iudlBAyO25" role="2Oq$k0">
                  <node concept="13iPFW" id="7iudlBAyNQ8" role="2Oq$k0" />
                  <node concept="2yIwOk" id="7iudlBAyObb" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="7iudlBAyQ6W" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="7iudlBAz2WZ">
    <ref role="13h7C2" to="nup6:7iudlBAz2Rb" resolve="ICheckUniqueNames" />
    <node concept="13i0hz" id="7iudlBAz2Xa" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="namedNodes" />
      <node concept="3Tm1VV" id="7iudlBAz2Xb" role="1B3o_S" />
      <node concept="A3Dl8" id="7iudlBAz2Xu" role="3clF45">
        <node concept="3Tqbb2" id="7iudlBAz2Y4" role="A3Ik2">
          <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
        </node>
      </node>
      <node concept="3clFbS" id="7iudlBAz2Xd" role="3clF47" />
    </node>
    <node concept="13hLZK" id="7iudlBAz2X0" role="13h7CW">
      <node concept="3clFbS" id="7iudlBAz2X1" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="7iudlBAza0i">
    <property role="3GE5qa" value="prog" />
    <ref role="13h7C2" to="nup6:3JPN2vWhXdY" resolve="Program" />
    <node concept="13hLZK" id="7iudlBAza0j" role="13h7CW">
      <node concept="3clFbS" id="7iudlBAza0k" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7iudlBAza0t" role="13h7CS">
      <property role="TrG5h" value="namedNodes" />
      <ref role="13i0hy" node="7iudlBAz2Xa" resolve="namedNodes" />
      <node concept="3Tm1VV" id="7iudlBAza0u" role="1B3o_S" />
      <node concept="3clFbS" id="7iudlBAza0y" role="3clF47">
        <node concept="3clFbF" id="7iudlBAza0S" role="3cqZAp">
          <node concept="2OqwBi" id="7iudlBAzc7w" role="3clFbG">
            <node concept="2OqwBi" id="7iudlBAzadn" role="2Oq$k0">
              <node concept="13iPFW" id="7iudlBAza0R" role="2Oq$k0" />
              <node concept="3Tsc0h" id="7iudlBAzasT" role="2OqNvi">
                <ref role="3TtcxE" to="nup6:3JPN2vWhXe1" resolve="declarations" />
              </node>
            </node>
            <node concept="3zZkjj" id="7iudlBAzf5X" role="2OqNvi">
              <node concept="1bVj0M" id="7iudlBAzf5Z" role="23t8la">
                <node concept="3clFbS" id="7iudlBAzf60" role="1bW5cS">
                  <node concept="3clFbF" id="7iudlBAzfd$" role="3cqZAp">
                    <node concept="3fqX7Q" id="7iudlBAzg31" role="3clFbG">
                      <node concept="2OqwBi" id="7iudlBAzg33" role="3fr31v">
                        <node concept="37vLTw" id="7iudlBAzg34" role="2Oq$k0">
                          <ref role="3cqZAo" node="7iudlBAzf61" resolve="it" />
                        </node>
                        <node concept="1mIQ4w" id="7iudlBAzg35" role="2OqNvi">
                          <node concept="chp4Y" id="7iudlBAzg36" role="cj9EA">
                            <ref role="cht4Q" to="nup6:4vHhYROhnJX" resolve="EmptyDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="7iudlBAzf61" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="7iudlBAzf62" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="7iudlBAza0z" role="3clF45">
        <node concept="3Tqbb2" id="7iudlBAza0$" role="A3Ik2">
          <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="7iudlBAz_Qr">
    <property role="3GE5qa" value="dot" />
    <ref role="13h7C2" to="nup6:7iudlBAzgfQ" resolve="DotExpr" />
    <node concept="13i0hz" id="5WNmJ7DokMG" role="13h7CS">
      <property role="TrG5h" value="expectType" />
      <node concept="3Tm1VV" id="5WNmJ7DokMH" role="1B3o_S" />
      <node concept="10P_77" id="5WNmJ7Dos4i" role="3clF45" />
      <node concept="3clFbS" id="5WNmJ7DokMJ" role="3clF47">
        <node concept="3cpWs8" id="5WNmJ7DouQv" role="3cqZAp">
          <node concept="3cpWsn" id="5WNmJ7DouQw" role="3cpWs9">
            <property role="TrG5h" value="tt" />
            <node concept="3Tqbb2" id="5WNmJ7DouQs" role="1tU5fm" />
            <node concept="2OqwBi" id="5WNmJ7DouQx" role="33vP2m">
              <node concept="2OqwBi" id="5WNmJ7DouQy" role="2Oq$k0">
                <node concept="13iPFW" id="5WNmJ7DouQz" role="2Oq$k0" />
                <node concept="3TrEf2" id="5WNmJ7DouQ$" role="2OqNvi">
                  <ref role="3Tt5mk" to="nup6:7iudlBAxolI" resolve="expr" />
                </node>
              </node>
              <node concept="3JvlWi" id="5WNmJ7DouQ_" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5WNmJ7Dos6j" role="3cqZAp">
          <node concept="2OqwBi" id="5WNmJ7DotPS" role="3clFbw">
            <node concept="37vLTw" id="5WNmJ7DouQA" role="2Oq$k0">
              <ref role="3cqZAo" node="5WNmJ7DouQw" resolve="tt" />
            </node>
            <node concept="1mIQ4w" id="5WNmJ7Dou59" role="2OqNvi">
              <node concept="25Kdxt" id="5WNmJ7Douyy" role="cj9EA">
                <node concept="37vLTw" id="5WNmJ7DouB9" role="25KhWn">
                  <ref role="3cqZAo" node="5WNmJ7Dos4Q" resolve="cc" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5WNmJ7Dos6l" role="3clFbx">
            <node concept="3cpWs6" id="5WNmJ7DouFG" role="3cqZAp">
              <node concept="3clFbT" id="5WNmJ7DouFL" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5WNmJ7DoxP0" role="3cqZAp">
          <node concept="3clFbT" id="5WNmJ7Doy1L" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5WNmJ7Dos4Q" role="3clF46">
        <property role="TrG5h" value="cc" />
        <node concept="3bZ5Sz" id="5WNmJ7Dos4P" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5WNmJ7Dos5o" role="3clF46">
        <property role="TrG5h" value="transparentWrappedTypes" />
        <node concept="10P_77" id="5WNmJ7Dos5C" role="1tU5fm" />
      </node>
    </node>
    <node concept="13hLZK" id="7iudlBAz_Qs" role="13h7CW">
      <node concept="3clFbS" id="7iudlBAz_Qt" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7iudlBAzAf6" role="13h7CS">
      <property role="TrG5h" value="priority" />
      <property role="2Ki8OM" value="true" />
      <ref role="13i0hy" node="4rZeNQ6Nh_5" resolve="priority" />
      <node concept="3Tm1VV" id="7iudlBAzAf7" role="1B3o_S" />
      <node concept="3clFbS" id="7iudlBAzAfa" role="3clF47">
        <node concept="3clFbF" id="7iudlBAzAkS" role="3cqZAp">
          <node concept="3cmrfG" id="7iudlBAzAkR" role="3clFbG">
            <property role="3cmrfH" value="10000" />
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="7iudlBAzAfb" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="7iudlBA$0R8">
    <property role="3GE5qa" value="dot" />
    <ref role="13h7C2" to="nup6:7iudlBAzgfU" resolve="IDotOp" />
    <node concept="13i0hz" id="7iudlBA$0XV" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="7iudlBA$0XW" role="1B3o_S" />
      <node concept="17QB3L" id="7iudlBA$0XX" role="3clF45" />
      <node concept="3clFbS" id="7iudlBA$0XY" role="3clF47">
        <node concept="3clFbF" id="7iudlBA$0XZ" role="3cqZAp">
          <node concept="3cpWs3" id="7iudlBA$0Y0" role="3clFbG">
            <node concept="Xl_RD" id="7iudlBA$0Y1" role="3uHU7w">
              <property role="Xl_RC" value="&gt;" />
            </node>
            <node concept="3cpWs3" id="7iudlBA$0Y2" role="3uHU7B">
              <node concept="Xl_RD" id="7iudlBA$0Y3" role="3uHU7B">
                <property role="Xl_RC" value="&lt;" />
              </node>
              <node concept="2OqwBi" id="7iudlBA$0Y4" role="3uHU7w">
                <node concept="2OqwBi" id="7iudlBA$0Y5" role="2Oq$k0">
                  <node concept="13iPFW" id="7iudlBA$0Y6" role="2Oq$k0" />
                  <node concept="2yIwOk" id="7iudlBA$0Y7" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="7iudlBA$0Y8" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="7iudlBA$qIw" role="13h7CS">
      <property role="TrG5h" value="ctx" />
      <node concept="3Tm1VV" id="7iudlBA$qIx" role="1B3o_S" />
      <node concept="3Tqbb2" id="7iudlBA$qOD" role="3clF45">
        <ref role="ehGHo" to="nup6:2frx7BFaCHD" resolve="Expr" />
      </node>
      <node concept="3clFbS" id="7iudlBA$qIz" role="3clF47">
        <node concept="3clFbF" id="7iudlBA$qPY" role="3cqZAp">
          <node concept="2OqwBi" id="7iudlBA$rK6" role="3clFbG">
            <node concept="1PxgMI" id="7iudlBA$rvY" role="2Oq$k0">
              <node concept="chp4Y" id="7iudlBA$rxm" role="3oSUPX">
                <ref role="cht4Q" to="nup6:7iudlBAzgfQ" resolve="DotExpr" />
              </node>
              <node concept="2OqwBi" id="7iudlBA$qZj" role="1m5AlR">
                <node concept="13iPFW" id="7iudlBA$qPX" role="2Oq$k0" />
                <node concept="1mfA1w" id="7iudlBA$r8b" role="2OqNvi" />
              </node>
            </node>
            <node concept="3TrEf2" id="7iudlBA$s0t" role="2OqNvi">
              <ref role="3Tt5mk" to="nup6:7iudlBAxolI" resolve="expr" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="7iudlBA$0R9" role="13h7CW">
      <node concept="3clFbS" id="7iudlBA$0Ra" role="2VODD2" />
    </node>
  </node>
</model>

