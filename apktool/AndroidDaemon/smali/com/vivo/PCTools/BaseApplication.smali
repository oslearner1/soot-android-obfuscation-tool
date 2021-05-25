.class public Lcom/vivo/PCTools/BaseApplication;
.super Landroid/app/Application;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/util/HashMap;

.field public static d:Landroid/app/Dialog;

.field private static g:Lcom/vivo/PCTools/BaseApplication;


# instance fields
.field public e:Z

.field public f:Z

.field private h:Lcom/vivo/PCTools/BaseApplication$AppState;

.field private i:Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;

.field private j:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

.field private k:Z

.field private l:Z

.field private m:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/PCTools/BaseApplication;->c:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/PCTools/BaseApplication;->d:Landroid/app/Dialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    sget-object v0, Lcom/vivo/PCTools/BaseApplication$AppState;->STOP:Lcom/vivo/PCTools/BaseApplication$AppState;

    iput-object v0, p0, Lcom/vivo/PCTools/BaseApplication;->h:Lcom/vivo/PCTools/BaseApplication$AppState;

    iput-object v2, p0, Lcom/vivo/PCTools/BaseApplication;->i:Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;

    iput-object v2, p0, Lcom/vivo/PCTools/BaseApplication;->j:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    iput-boolean v1, p0, Lcom/vivo/PCTools/BaseApplication;->e:Z

    iput-boolean v1, p0, Lcom/vivo/PCTools/BaseApplication;->k:Z

    iput-boolean v1, p0, Lcom/vivo/PCTools/BaseApplication;->l:Z

    iput-boolean v1, p0, Lcom/vivo/PCTools/BaseApplication;->f:Z

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/BaseApplication;->m:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public static SavePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/vivo/PCTools/BaseApplication;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/vivo/PCTools/BaseApplication;
    .locals 1

    sget-object v0, Lcom/vivo/PCTools/BaseApplication;->g:Lcom/vivo/PCTools/BaseApplication;

    return-object v0
.end method


# virtual methods
.method public SetAlertDialog(Landroid/app/Dialog;)V
    .locals 0

    sput-object p1, Lcom/vivo/PCTools/BaseApplication;->d:Landroid/app/Dialog;

    return-void
.end method

.method public getAlertAuthorDialog()Landroid/app/Dialog;
    .locals 1

    sget-object v0, Lcom/vivo/PCTools/BaseApplication;->d:Landroid/app/Dialog;

    return-object v0
.end method

.method public getAppState()Lcom/vivo/PCTools/BaseApplication$AppState;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/BaseApplication;->h:Lcom/vivo/PCTools/BaseApplication$AppState;

    return-object v0
.end method

.method public getMywmParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/BaseApplication;->m:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getmUsbConnectActivityInstance()Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/BaseApplication;->i:Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;

    return-object v0
.end method

.method public getmWifiConnectActivityInstance()Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/BaseApplication;->j:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    return-object v0
.end method

.method public isPCHelperConnnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/PCTools/BaseApplication;->l:Z

    return v0
.end method

.method public isRecovering()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/PCTools/BaseApplication;->e:Z

    return v0
.end method

.method public isShowNotify()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/PCTools/BaseApplication;->k:Z

    return v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sget-object v0, Lcom/vivo/PCTools/BaseApplication;->g:Lcom/vivo/PCTools/BaseApplication;

    if-nez v0, :cond_0

    sput-object p0, Lcom/vivo/PCTools/BaseApplication;->g:Lcom/vivo/PCTools/BaseApplication;

    :cond_0
    const-string v0, "com.vivo.PCTools.BaseApplication"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vivo/PCTools/BaseApplication;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/PCTools/BaseApplication;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vivo/PCTools/BaseApplication;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/PCTools/BaseApplication;->b:Ljava/lang/String;

    return-void
.end method

.method public setActivityInstanceNull()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/BaseApplication;->j:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    iput-object v0, p0, Lcom/vivo/PCTools/BaseApplication;->i:Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;

    return-void
.end method

.method public setAppState(Lcom/vivo/PCTools/BaseApplication$AppState;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/BaseApplication;->h:Lcom/vivo/PCTools/BaseApplication$AppState;

    return-void
.end method

.method public setPCHelperConnnected(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/vivo/PCTools/BaseApplication;->l:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.vivo.PCTools.connect_state_changed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "new_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/BaseApplication;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    iput-boolean p1, p0, Lcom/vivo/PCTools/BaseApplication;->l:Z

    return-void
.end method

.method public setRecovering(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/PCTools/BaseApplication;->e:Z

    return-void
.end method

.method public setShowNotify(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/PCTools/BaseApplication;->k:Z

    return-void
.end method

.method public setmUsbConnectActivityInstance(Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/vivo/PCTools/BaseApplication;->i:Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/BaseApplication;->j:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    return-void
.end method

.method public setmWifiConnectActivityInstance(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/vivo/PCTools/BaseApplication;->j:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/BaseApplication;->i:Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;

    return-void
.end method
