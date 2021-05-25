.class public final Lorg/swiftp/ac;
.super Ljava/lang/Object;


# static fields
.field protected static a:I

.field public static b:I

.field public static final c:Ljava/lang/String;

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:Ljava/lang/String;

.field private static j:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0xa

    const/4 v1, 0x4

    const/16 v0, 0x100

    sput v0, Lorg/swiftp/ac;->d:I

    const/high16 v0, 0x10000

    sput v0, Lorg/swiftp/ac;->a:I

    sput v2, Lorg/swiftp/ac;->e:I

    sput v2, Lorg/swiftp/ac;->f:I

    sput v1, Lorg/swiftp/ac;->g:I

    sput v1, Lorg/swiftp/ac;->h:I

    const-string v0, "SwiFTP"

    sput-object v0, Lorg/swiftp/ac;->i:Ljava/lang/String;

    const/16 v0, 0x84a

    sput v0, Lorg/swiftp/ac;->b:I

    invoke-static {}, Lcom/vivo/PCTools/PcFtpRemote/j;->getSdDirectory()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/swiftp/ac;->c:Ljava/lang/String;

    const/4 v0, 0x2

    sput v0, Lorg/swiftp/ac;->j:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConsoleLogLevel()I
    .locals 1

    sget v0, Lorg/swiftp/ac;->h:I

    return v0
.end method

.method public static getDataChunkSize()I
    .locals 1

    sget v0, Lorg/swiftp/ac;->a:I

    return v0
.end method

.method public static getInputBufferSize()I
    .locals 1

    sget v0, Lorg/swiftp/ac;->d:I

    return v0
.end method

.method public static getPortNumber()I
    .locals 1

    sget v0, Lorg/swiftp/ac;->b:I

    return v0
.end method

.method public static getServerLogScrollBack()I
    .locals 1

    sget v0, Lorg/swiftp/ac;->f:I

    return v0
.end method

.method public static getSessionMonitorScrollBack()I
    .locals 1

    sget v0, Lorg/swiftp/ac;->e:I

    return v0
.end method

.method public static getSettingsMode()I
    .locals 1

    sget v0, Lorg/swiftp/ac;->j:I

    return v0
.end method

.method public static getSettingsName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/swiftp/ac;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static getUiLogLevel()I
    .locals 1

    sget v0, Lorg/swiftp/ac;->g:I

    return v0
.end method

.method public static setConsoleLogLevel(I)V
    .locals 0

    sput p0, Lorg/swiftp/ac;->h:I

    return-void
.end method

.method public static setDataChunkSize(I)V
    .locals 0

    sput p0, Lorg/swiftp/ac;->a:I

    return-void
.end method

.method public static setInputBufferSize(I)V
    .locals 0

    sput p0, Lorg/swiftp/ac;->d:I

    return-void
.end method

.method public static setLogScrollBack(I)V
    .locals 0

    sput p0, Lorg/swiftp/ac;->f:I

    return-void
.end method

.method public static setPortNumber(I)V
    .locals 0

    sput p0, Lorg/swiftp/ac;->b:I

    return-void
.end method

.method public static setServerLogScrollBack(I)V
    .locals 0

    sput p0, Lorg/swiftp/ac;->f:I

    return-void
.end method

.method public static setSessionMonitorScrollBack(I)V
    .locals 0

    sput p0, Lorg/swiftp/ac;->e:I

    return-void
.end method

.method public static setSettingsMode(I)V
    .locals 0

    sput p0, Lorg/swiftp/ac;->j:I

    return-void
.end method

.method public static setSettingsName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lorg/swiftp/ac;->i:Ljava/lang/String;

    return-void
.end method

.method public static setUiLogLevel(I)V
    .locals 0

    sput p0, Lorg/swiftp/ac;->g:I

    return-void
.end method
