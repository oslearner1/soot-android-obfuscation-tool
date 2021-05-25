.class public Lcom/vivo/PCTools/PcFtp/FtpService;
.super Landroid/app/Service;


# static fields
.field public static a:I

.field public static b:I

.field private static c:I


# instance fields
.field private d:Lcom/vivo/PCTools/PcFtp/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/vivo/PCTools/PcFtp/FtpService;->a:I

    const/4 v0, 0x1

    sput v0, Lcom/vivo/PCTools/PcFtp/FtpService;->b:I

    const/4 v0, -0x1

    sput v0, Lcom/vivo/PCTools/PcFtp/FtpService;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public SetFtpWorkingThreadStop()V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtp/FtpService;->d:Lcom/vivo/PCTools/PcFtp/b;

    invoke-virtual {v0}, Lcom/vivo/PCTools/PcFtp/b;->stopFtpServer()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtp/FtpService;->d:Lcom/vivo/PCTools/PcFtp/b;

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "FtpService"

    const-string v1, "FtpService have create"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/PcFtp/FtpService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/BaseApplication;

    invoke-virtual {v0}, Lcom/vivo/PCTools/BaseApplication;->getAppState()Lcom/vivo/PCTools/BaseApplication$AppState;

    move-result-object v0

    sget-object v1, Lcom/vivo/PCTools/BaseApplication$AppState;->USB:Lcom/vivo/PCTools/BaseApplication$AppState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "FtpService"

    const-string v2, "link is usb state"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v1, Lcom/vivo/PCTools/PcFtp/b;

    invoke-virtual {p0}, Lcom/vivo/PCTools/PcFtp/FtpService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/vivo/PCTools/PcFtp/b;-><init>(ILandroid/content/Context;)V

    iput-object v1, p0, Lcom/vivo/PCTools/PcFtp/FtpService;->d:Lcom/vivo/PCTools/PcFtp/b;

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtp/FtpService;->d:Lcom/vivo/PCTools/PcFtp/b;

    invoke-virtual {v0}, Lcom/vivo/PCTools/PcFtp/b;->start()V

    return-void

    :cond_0
    sget-object v1, Lcom/vivo/PCTools/BaseApplication$AppState;->Wifi:Lcom/vivo/PCTools/BaseApplication$AppState;

    if-ne v0, v1, :cond_1

    sget v0, Lcom/vivo/PCTools/PcFtp/FtpService;->b:I

    const-string v1, "FtpService"

    const-string v2, "link is wifi state"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/vivo/PCTools/PcFtp/FtpService;->c:I

    const-string v1, "FtpService"

    const-string v2, "link is on error state"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/vivo/PCTools/PcFtp/FtpService;->SetFtpWorkingThreadStop()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
