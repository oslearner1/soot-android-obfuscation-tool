.class public final Lcom/vivo/PCTools/PcFtpRemote/i;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/vivo/PCTools/PcFtpRemote/i;


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/vivo/PCTools/PcFtpRemote/i;
    .locals 1

    sget-object v0, Lcom/vivo/PCTools/PcFtpRemote/i;->b:Lcom/vivo/PCTools/PcFtpRemote/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vivo/PCTools/PcFtpRemote/i;

    invoke-direct {v0}, Lcom/vivo/PCTools/PcFtpRemote/i;-><init>()V

    sput-object v0, Lcom/vivo/PCTools/PcFtpRemote/i;->b:Lcom/vivo/PCTools/PcFtpRemote/i;

    :cond_0
    sget-object v0, Lcom/vivo/PCTools/PcFtpRemote/i;->b:Lcom/vivo/PCTools/PcFtpRemote/i;

    return-object v0
.end method


# virtual methods
.method public final getShowDotAndHiddenFiles()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/PCTools/PcFtpRemote/i;->a:Z

    return v0
.end method

.method public final setShowDotAndHiddenFiles(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/PCTools/PcFtpRemote/i;->a:Z

    return-void
.end method
