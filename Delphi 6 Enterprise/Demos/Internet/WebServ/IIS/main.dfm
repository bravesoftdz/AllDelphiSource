�
 TCUSTOMERINFOMODULE 0"  TPF0TCustomerInfoModuleCustomerInfoModuleOldCreateOrder	OnCreateDataModule1CreateActionsNameCustomerListPathInfo/customerlistProducerCustomerList NameQueryActionPathInfo	/runqueryOnActionWebModule1QueryActionAction NameEmployeeListPathInfo/employeelistProducerEmployeeList NameGetImagePathInfo	/getimageOnAction CustomerInfoModuleGetImageAction NameBioLifePathInfo/biolifeOnActionCustomerInfoModuleBioLifeAction NameRedirectPathInfo	/redirectOnAction CustomerInfoModuleRedirectAction Default	NamerootPathInfo/RootProducerRoot  Left� Top� Height�Width� TQueryTableProducerCustomerOrdersCaptionCustomer OrdersColumns	FieldNameOrderNo 	FieldNameSaleDateTitle.AlignhaCenter 	FieldNameShipDate  QueryQuery1TableAttributes.BorderTableAttributes.CellSpacingTableAttributes.CellPaddingTableAttributes.Width2Left2Top�   TQueryQuery1DatabaseNameDBDEMOSSessionNameDefaultSQL.StringsSELECT *FROM ORDERSWHERE(CustNo = :CustNo) Left� Top� 	ParamDataDataTypeftFloatNameCustNo	ParamType	ptUnknown    TPageProducerCustomerListHTMLDoc.Strings<HTML>6<!--------------------------------------------------->+<!-- Copyright Inprise Corporation 1999 -->6<!---------------------------------------------------><HEAD>3<TITLE>Sample Delphi Web server application</TITLE></HEAD><BODY>#<H2>Customer Order Information</H2><HR>.Click a customer name to view their orders.<P><#CUSTLIST><P></BODY></HTML>  	OnHTMLTagCustomerListHTMLTagLeft2TopY  TTableCustomerDatabaseNameDBDEMOSSessionNameDefaultIndexFieldNamesCompany	TableNameCUSTOMER.DBLeft� TopX TFloatFieldCustomerCustNo	FieldNameCustNo  TStringFieldCustomerCompany	FieldNameCompanySize   TTableBioLifeDatabaseNameDBDEMOS	TableName
biolife.dbLeft� Top TFloatFieldBioLifeSpeciesNo	FieldName
Species No  TStringFieldBioLifeCategory	FieldNameCategorySize  TStringFieldBioLifeCommon_Name	FieldNameCommon_NameSize  TStringFieldBioLifeSpeciesName	FieldNameSpecies NameSize(  TFloatFieldBioLifeLengthcm	FieldNameLength (cm)  TFloatFieldBioLifeLength_In	FieldName	Length_In  
TMemoFieldBioLifeNotes	FieldNameNotes	OnGetTextBioLifeNotesGetTextBlobTypeftMemoSize2  TGraphicFieldBioLifeGraphic	FieldNameGraphic	OnGetTextBioLifeGraphicGetTextBlobType	ftGraphic   TPageProducerRootHTMLDoc.Strings<HTML>-<TITLE>ISAPI/NSAPI/APACHE/CGI Example</TITLE><BODY>.<H3>ISAPI/NSAPI/APACHE/CGI Example server</H3>WNOTE:  The links on this page assume that you have placed IServer/IServCGI in a scripts1directory off of your WWW servers root directory.<P><B>Web Examples</B><P>+<B>TPageProducer using a Custom Tag</B><BR>?For an example of using a TPageProducer with a Custom Tag clickM<A HREF="/scripts/<#MODULENAME>/customerlist">here</A>.  This example returnsOlist of all customers from the Customer.DB table.  You can click the customer's'name to view a listing of their orders.<P> <B>TDatasetTableProducer</B><BR>VFor an example of using the TDatasetTableProducer to display the Employee table click 0<A HREF="<#MODULENAME>/employeelist">here</A>.  <P><B>TDatasetPageProducer</B><BR>KFor an example of using the TDatasetPageProducer and of returning a graphicSfrom a table click <A HREF="/scripts/<#MODULENAME>/biolife">here</A>.  This exampleQmakes use of the JPeg unit to display a bitmap stored in the graphic field of theBiolife.DB table.<P><B>Server Redirect</B><BR>OClick <A HREF="/scripts/<#MODULENAME>/redirect">here</A> for a demonstration of+how to redirect a use to an other web site.<P><B>Cookies</B><BR>OFor an example of using Cookies hit the refresh button on your browser and see _how the number of hits is incremented, it remembers the count even after you close the browser.XCookies are stored on the browser side, and every time the browser hits the server that Ccreated the cookie, it sends the cookie back to the server.<BR><BR>1Number of hits from this browser  = <#VISITCOUNT></BODY></HTML>     	OnHTMLTagRootHTMLTagLeft2Top  TDataSetTableProducerEmployeeListCaption<h1>Employee Catalog</h1>DataSetEmployeeOnFormatCellEmployeeListFormatCellLeft0Top�   TTableEmployeeDatabaseNameDBDEMOS	TableNameemployee.dbLeft� Top�   TDataSetPageProducerBioLifeProducerHTMLDoc.Strings<HTML><HEAD>   <TITLE>Biolife Data</TITLE></HEAD><BODY><TABLE BORDER=0 ><TR><TD><B>Category:</B></TD> <TD><#Category></TD></TR> <TR><TD><B>Common Name:</B></TD> <TD><#Common_Name></TD></TR> <TR>!<TD VALIGN=TOP><B>Notes:</B></TD> <TD><#Notes></TD></TR> <TR>#<TD VALIGN=TOP><B>Picture:</B></TD> <TD><#Graphic></TD></TR></TABLE> </BODY></HTML> DataSetBioLifeLeft0Top    