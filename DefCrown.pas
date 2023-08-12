program DefenderOfTheCrown;

{$MODE TP}

const
  LordsCount = 5;

type
  LordRec = record
    active    : boolean;
    saxon     : boolean;
    aggressive: boolean;
  end;

var
  Lords: array[1..LordsCount] of LordRec;
  Month: word;

{***************************************************************}

procedure TODO;
begin
end;

procedure InitGraph;
begin
  TODO;
end;

procedure HistoricIntro;
begin
  TODO;
end;

procedure InitVars;
begin
  Month := 0;
  TODO;
end;

procedure SelectHero;
begin
  TODO;
end;

procedure RobinIntro;
begin
  TODO;
end;

procedure AssignCastles;
begin
  TODO;
end;

function NoMoreBadGuys: boolean;
begin
  TODO;
  NoMoreBadGuys := False;
end;

function MyCastleOver: boolean;
begin
  TODO;
  MyCastleOver := False;
end;

procedure ShowMap;
begin
  TODO;
end;

procedure IncreaseDate;
begin
  TODO;
end;

procedure IncreaseMoney;
begin
  TODO;
end;

procedure NextMonth;
begin
  ShowMap;
  inc(Month);
  IncreaseMoney;
end;

procedure MyStep;
begin
  TODO;
end;

procedure LordStep(var Lord: LordRec);
begin
  TODO;
end;

function PlayMonth: boolean;
var
  i: integer;
begin
  PlayMonth := False;

  NextMonth;
  MyStep;
  if NoMoreBadGuys then Exit;

  for i:=1 to LordsCount do
  begin
    LordStep(Lords[i]);
    if MyCastleOver then Exit;
  end;

  PlayMonth := True;
end;

procedure PlayGame;
begin
  InitVars;
  SelectHero;
  AssignCastles;
  RobinIntro;
  repeat until not PlayMonth;
end;

function WantToContinue: boolean;
begin
  TODO;
  WantToContinue := False;
end;

begin
  InitGraph;
  HistoricIntro;
  repeat PlayGame until not WantToContinue;
end.
