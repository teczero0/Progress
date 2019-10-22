DEFINE TEMP-TABLE Pessoa
FIELD nome    AS CHARACTER
FIELD idade   AS INTEGER
FIELD sexo    AS CHARACTER
FIELD salario AS DECIMAL.

DEFINE VARIABLE cTargetType AS CHARACTER NO-UNDO.
DEFINE VARIABLE cFile AS CHARACTER NO-UNDO.
DEFINE VARIABLE lFormatted AS LOGICAL NO-UNDO.
DEFINE VARIABLE cEncoding AS CHARACTER NO-UNDO.
DEFINE VARIABLE cSchemaLocation AS CHARACTER NO-UNDO.
DEFINE VARIABLE lWriteSchema AS LOGICAL NO-UNDO.
DEFINE VARIABLE lMinSchema AS LOGICAL NO-UNDO.
DEFINE VARIABLE retOK AS LOGICAL NO-UNDO.

CREATE Pessoa.
ASSIGN Pessoa.nome    = 'carlos'
Pessoa.idade   = 25
Pessoa.sexo    = 'm'
Pessoa.salario = 1000.

CREATE Pessoa.
ASSIGN Pessoa.nome    = 'joao'
Pessoa.idade   = 16
Pessoa.sexo    = 'm'
Pessoa.salario = 500.

ASSIGN
cTargetType = 'file'
cFile = 'c:\temp\pessoa.xml'
lFormatted = YES
cEncoding = ?
cSchemaLocation = ?
lWriteSchema = NO
lMinSchema = NO.

retOK = TEMP-TABLE Pessoa:WRITE-XML(cTargetType,
                                    cFile, 
                                    lFormatted,
                                    cEncoding,
                                    cSchemaLocation,
                                    lWriteSchema,
                                    lMinSchema).

