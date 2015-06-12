#!/bin/bash
# ----------------------------------------------------------------------------
# Ignore files in Git - https://help.github.com/articles/ignoring-files/
# ----------------------------------------------------------------------------
outfile=$HOME/.gitignore_global

rm -f $outfile

# To enable, remove leading underscore _
echo Adding...
list="
_Global/Anjuta.gitignore
_Global/Archives.gitignore
_Global/BricxCC.gitignore
_Global/Cloud9.gitignore
_Global/CodeKit.gitignore
_Global/CVS.gitignore
_Global/DartEditor.gitignore
_Global/Dreamweaver.gitignore
_Global/Eclipse.gitignore
_Global/EiffelStudio.gitignore
_Global/Emacs.gitignore
_Global/Ensime.gitignore
_Global/Espresso.gitignore
_Global/FlexBuilder.gitignore
_Global/IPythonNotebook.gitignore
_Global/JDeveloper.gitignore
Global/JetBrains.gitignore
_Global/Kate.gitignore
_Global/KDevelop4.gitignore
_Global/Lazarus.gitignore
_Global/LibreOffice.gitignore
Global/Linux.gitignore
_Global/LyX.gitignore
_Global/Matlab.gitignore
Global/Mercurial.gitignore
_Global/MicrosoftOffice.gitignore
_Global/ModelSim.gitignore
_Global/Momentics.gitignore
_Global/MonoDevelop.gitignore
_Global/NetBeans.gitignore
_Global/Ninja.gitignore
_Global/NotepadPP.gitignore
Global/OSX.gitignore
_Global/Redcar.gitignore
_Global/Redis.gitignore
_Global/SBT.gitignore
_Global/SlickEdit.gitignore
Global/SublimeText.gitignore
Global/SVN.gitignore
_Global/SynopsysVCS.gitignore
_Global/Tags.gitignore
_Global/TextMate.gitignore
_Global/TortoiseGit.gitignore
Global/Vagrant.gitignore
Global/Vim.gitignore
_Global/VirtualEnv.gitignore
Global/VisualStudioCode.gitignore
_Global/WebMethods.gitignore
Global/Windows.gitignore
Global/Xcode.gitignore
_Global/XilinxISE.gitignore
_Actionscript.gitignore
_Ada.gitignore
_Agda.gitignore
_Android.gitignore
_AppceleratorTitanium.gitignore
_AppEngine.gitignore
_ArchLinuxPackages.gitignore
_Autotools.gitignore
C.gitignore
_"C++.gitignore"
_CakePHP.gitignore
_CFWheels.gitignore
_ChefCookbook.gitignore
_Clojure.gitignore
CMake.gitignore
_CodeIgniter.gitignore
_CommonLisp.gitignore
_Composer.gitignore
_Concrete5.gitignore
_Coq.gitignore
_CraftCMS.gitignore
_CUDA.gitignore
_Dart.gitignore
_Delphi.gitignore
_DM.gitignore
_Drupal.gitignore
_Eagle.gitignore
_Elisp.gitignore
_Elixir.gitignore
_EPiServer.gitignore
_Erlang.gitignore
_ExpressionEngine.gitignore
_ExtJs.gitignore
_Fancy.gitignore
_Finale.gitignore
_ForceDotCom.gitignore
_Fortran.gitignore
_FuelPHP.gitignore
_Gcov.gitignore
_GitBook.gitignore
Go.gitignore
Gradle.gitignore
_Grails.gitignore
_GWT.gitignore
Haskell.gitignore
_Idris.gitignore
_IGORPro.gitignore
Java.gitignore
Jboss.gitignore
Jekyll.gitignore
_Joomla.gitignore
_KiCAD.gitignore
_Kohana.gitignore
_LabVIEW.gitignore
_Laravel.gitignore
_Leiningen.gitignore
_LemonStand.gitignore
_Lilypond.gitignore
_Lithium.gitignore
_Lua.gitignore
_Magento.gitignore
Maven.gitignore
_Mercury.gitignore
_MetaProgrammingSystem.gitignore
_Meteor.gitignore
_Nanoc.gitignore
_Nim.gitignore
Node.gitignore
_Objective-C.gitignore
_OCaml.gitignore
_Opa.gitignore
_OpenCart.gitignore
_OracleForms.gitignore
_Packer.gitignore
Perl.gitignore
_Phalcon.gitignore
_PlayFramework.gitignore
_Plone.gitignore
_Prestashop.gitignore
_Processing.gitignore
Python.gitignore
_Qooxdoo.gitignore
_Qt.gitignore
_R.gitignore
_Rails.gitignore
_RhodesRhomobile.gitignore
_ROS.gitignore
Ruby.gitignore
_Rust.gitignore
Sass.gitignore
Scala.gitignore
_SCons.gitignore
_Scrivener.gitignore
_Sdcc.gitignore
_SeamGen.gitignore
_SketchUp.gitignore
_Stella.gitignore
_SugarCRM.gitignore
_Swift.gitignore
_Symfony.gitignore
_SymphonyCMS.gitignore
TeX.gitignore
_Textpattern.gitignore
_TurboGears2.gitignore
_Typo3.gitignore
_Umbraco.gitignore
_Unity.gitignore
_VisualStudio.gitignore
_VVVV.gitignore
_Waf.gitignore
_WordPress.gitignore
_Xojo.gitignore
Yeoman.gitignore
_Yii.gitignore
_ZendFramework.gitignore
_Zephir.gitignore"

for f in $list; do
    [ -f $f ] && stat -f "%z%t%N" $f
    [ -f $f ] && cat $f | grep -v "#" >> ${outfile}.out
done

echo ""
echo Removing duplicates
sort ${outfile}.out | uniq > $outfile
rm -f ${outfile}.out

echo Updating git configuration
git config --global core.excludesfile $outfile

