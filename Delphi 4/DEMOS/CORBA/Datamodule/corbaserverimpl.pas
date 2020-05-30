unit CORBAServerImpl;

{
  This is the Implementation Unit of the CORBA Server.
  In the initialization section of this unit, the wizard writes a call to
  CORBAFactory constructor which creates an instance of the Object DemoCORBA.
  The third parameter to the method is the Repository ID and is of
  the format 'IDL:ProjectName/ClassNameFactory:1.0'
  This is what any CORBA client uses to connect to any CORBA Server.
  In order to view the IDL file, use the 'Export to CORBA IDL' button
  on the Type Library Form.
}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComObj, VCLCom, StdVcl, BdeProv, DataBkr, CorbaRdm, CorbaObj,
  CORBAServer_TLB, Db, DBTables;

type

  TDemoCORBA = class(TCorbaDataModule, IDemoCORBA)
    CustomerTable: TTable;
    CustomerSource: TDataSource;
    OrderTable: TTable;
    procedure DemoCORBACreate(Sender: TObject);
    procedure DemoCORBADestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    function Get_CustomerTable: IProvider; safecall;
  end;

var
  DemoCORBA: TDemoCORBA;

implementation

{$R *.DFM}

uses CorbInit, CorbaVcl, CORBAServerForm;

{ This method was generated using the "export from datamodule" option on the
  local menu of any TQuery, Table, or TProvider component.  It returns the
  IProvider interface used by the client. }

function TDemoCORBA.Get_CustomerTable: IProvider;
begin
  Result := CustomerTable.Provider;
end;

{ These Create/Destroy methods are optional. These are here for the purpose
  of counting the clients connected to the CORBA Server
  Disabling IDE debugger would allow running multiple copies of the client.}

procedure TDemoCORBA.DemoCORBACreate(Sender: TObject);
begin
  MainServerForm.UpdateClientCount(1);
end;

procedure TDemoCORBA.DemoCORBADestroy(Sender: TObject);
begin
  MainServerForm.UpdateClientCount(-1);
end;

initialization
  TCorbaVclComponentFactory.Create('DemoCORBAFactory', 'DemoCORBA', 'IDL:CORBAServer/DemoCORBAFactory:1.0', IDemoCORBA,
    TDemoCORBA, iMultiInstance, tmSingleThread);
end.
