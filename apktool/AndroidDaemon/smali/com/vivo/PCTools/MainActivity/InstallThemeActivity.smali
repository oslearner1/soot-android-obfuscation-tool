.class public Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;
.super Landroid/app/Activity;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static d:I

.field private static e:I


# instance fields
.field private f:Landroid/app/ActivityManager;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/app/AlertDialog;

.field private k:Lcom/vivo/PCTools/MainActivity/o;

.field private l:Landroid/widget/ProgressBar;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a:Ljava/lang/String;

    sget-object v0, Lcom/vivo/PCTools/util/a;->a:Ljava/lang/String;

    const-string v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/vivo/PCTools/util/a;->e:Ljava/lang/String;

    const-string v1, "vivo V1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/vivo/PCTools/util/a;->e:Ljava/lang/String;

    const-string v1, "vivo S1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/vivo/PCTools/util/a;->j:Ljava/lang/String;

    const-string v1, "EX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/data/shared/theme/"

    sput-object v0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->b:Ljava/lang/String;

    const-string v0, "/data/shared/"

    sput-object v0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->c:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const-string v0, "/data/bbkcore/theme/"

    sput-object v0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->b:Ljava/lang/String;

    const-string v0, "/data/bbkcore/"

    sput-object v0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/bbkcore/theme"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "/data/bbkcore/theme/"

    sput-object v0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->b:Ljava/lang/String;

    const-string v0, "/data/bbkcore/"

    sput-object v0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->c:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "/data/core/theme/"

    sput-object v0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->b:Ljava/lang/String;

    const-string v0, "/data/core/"

    sput-object v0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->f:Landroid/app/ActivityManager;

    iput v1, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->m:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->n:I

    iput v1, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->o:I

    iput v1, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->p:I

    iput-boolean v2, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->q:Z

    iput-boolean v2, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->r:Z

    new-instance v0, Lcom/vivo/PCTools/MainActivity/n;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/MainActivity/n;-><init>(Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;)V

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->t:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->k:Lcom/vivo/PCTools/MainActivity/o;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/MainActivity/o;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->k:Lcom/vivo/PCTools/MainActivity/o;

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/MainActivity/o;->removeMessages(I)V

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->k:Lcom/vivo/PCTools/MainActivity/o;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Lcom/vivo/PCTools/MainActivity/o;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "itz path:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-boolean v3, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->s:Z

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->m:I

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->l:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->m:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    sget-object v0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Progress Count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->m:I

    if-ne v0, v7, :cond_2

    invoke-direct {p0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->b()V

    invoke-direct {p0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->f:Landroid/app/ActivityManager;

    const-string v1, "com.bbk.launcher2"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->f:Landroid/app/ActivityManager;

    const-string v1, "com.bbk.launcher.root"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->f:Landroid/app/ActivityManager;

    const-string v1, "com.bbk.scene.indoor"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->f:Landroid/app/ActivityManager;

    const-string v1, "com.bbk.scene.earth"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->f:Landroid/app/ActivityManager;

    const-string v1, "com.scenelancher.outdoor"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a()V

    goto :goto_0

    :catch_0
    move-exception v0

    iput-boolean v3, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->s:Z

    const-string v1, "installThemeFile"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "success:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->s:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->m:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->q:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "wallpaper/default_wallpaper.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "wallpaper/default_wallpaper.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_5

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v1}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->setWallpaper(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iput-boolean v3, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->s:Z

    const-string v1, "installDesktopWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "success:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->s:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->m:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    iget-boolean v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->r:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "wallpaper/default_lock_wallpaper.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "wallpaper/default_lock_wallpaper.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_9

    iput-boolean v3, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->s:Z

    const-string v0, "installLockScreenWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "success:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->s:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a()V

    goto/16 :goto_0

    :cond_9
    :try_start_2
    const-string v0, "wallpaper"

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v0, :cond_a

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setLockScreenBitmap"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/Bitmap;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_a
    :goto_4
    :try_start_4
    const-string v0, "com.vivo.common.utils.VivoWallpaperManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const-string v3, "getInstance"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/Bitmap;

    aput-object v4, v2, v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setLockScreen"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.lockscreen.action.WALLPAPER_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.mediatek.lockscreen.extra.COMPLETE"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_5
    sget-object v2, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    sget-object v1, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_b
    iget v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->m:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->m:I

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->l:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->m:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    sget-object v0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Progress Count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->k:Lcom/vivo/PCTools/MainActivity/o;

    invoke-virtual {v0, v7}, Lcom/vivo/PCTools/MainActivity/o;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->k:Lcom/vivo/PCTools/MainActivity/o;

    invoke-virtual {v1, v7}, Lcom/vivo/PCTools/MainActivity/o;->removeMessages(I)V

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->k:Lcom/vivo/PCTools/MainActivity/o;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Lcom/vivo/PCTools/MainActivity/o;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method private a(Ljava/io/File;)V
    .locals 7

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    aget-object v3, v1, v0

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, v4}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a(Ljava/io/File;)V

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)V
    .locals 12

    const/4 v10, 0x1

    const/4 v9, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->s:Z

    const-string v0, "installCurrentTheme"

    const-string v1, "themePath is empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "sh"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "-c"

    aput-object v1, v3, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-boolean v9, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->s:Z

    const-string v1, "installTheme"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "success:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->s:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->b:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_2
    const/4 v0, 0x2

    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "chmod 777 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v4, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->s:Z

    const-string v5, "installCurrentTheme"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "success:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->s:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    new-instance v5, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->b:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :goto_3
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_4
    invoke-virtual {v2, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_7

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    const/4 v0, 0x2

    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "chmod 777 "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v4, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "theme.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_6
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    new-instance v5, Lcom/vivo/PCTools/c/d;

    invoke-direct {v5}, Lcom/vivo/PCTools/c/d;-><init>()V

    invoke-virtual {v0, v1, v5}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    invoke-virtual {v5}, Lcom/vivo/PCTools/c/d;->getThemeItemList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v10, :cond_5

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/c/b;

    invoke-virtual {v0}, Lcom/vivo/PCTools/c/b;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->h:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/c/b;

    invoke-virtual {v0}, Lcom/vivo/PCTools/c/b;->getStyle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->i:Ljava/lang/String;

    sget-object v0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a:Ljava/lang/String;

    const-string v5, "get uid = %s  sytle = %s from theme.xml"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->h:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->i:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_5
    :goto_6
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_3

    :cond_7
    const/4 v7, 0x0

    :try_start_9
    invoke-virtual {v0, v1, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_4

    :catch_2
    move-exception v0

    :try_start_a
    sget-object v1, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "write file err"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    :catch_3
    move-exception v1

    :goto_7
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_6

    :catchall_0
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_8
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_8
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catchall_1
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_7
.end method

.method private b()V
    .locals 9

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    sget-object v0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->b:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    array-length v4, v3

    move v0, v1

    :goto_1
    if-lt v0, v4, :cond_3

    :cond_1
    :goto_2
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "lockscreen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "sh"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-c"

    aput-object v2, v0, v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v2, 0x2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmod 777 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    aget-object v5, v3, v0

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_5
    const-string v7, "3party"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0, v6}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a(Ljava/io/File;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->f:Landroid/app/ActivityManager;

    const-string v1, "com.baidu.searchbox"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->f:Landroid/app/ActivityManager;

    const-string v1, "com.android.applicationmanager"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->f:Landroid/app/ActivityManager;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->i:Ljava/lang/String;

    const-string v1, "whole"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "theme_style"

    const-string v2, "whole"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "theme_id"

    iget-object v2, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "state = 4"

    :try_start_0
    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/vivo/PCTools/c/c;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v1

    if-eqz v1, :cond_6

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sget-object v2, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "last applyed theme index is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    if-nez v2, :cond_5

    const-string v2, "state"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/vivo/PCTools/c/c;->a:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v0, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, ""

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_2
    :goto_4
    invoke-direct {p0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->d()I

    move-result v0

    const/16 v1, 0x9ce

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_3
    :goto_5
    iput v6, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->m:I

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->l:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->m:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    sget-object v0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Progress Count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->finish()V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "theme_style"

    const-string v2, "general"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_5
    if-ne v2, v8, :cond_0

    :try_start_2
    const-string v2, "state"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_6
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_6
    :try_start_4
    sget-object v0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a:Ljava/lang/String;

    const-string v2, "get applyed item: nothing"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_5
    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/vivo/PCTools/c/c;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sget-object v1, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "current applyed theme index is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "state"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/vivo/PCTools/c/c;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_8
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :cond_9
    :try_start_6
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "uid"

    iget-object v2, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "state"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "filename"

    iget-object v2, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/vivo/PCTools/c/c;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_8

    :catch_1
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_9
    :try_start_8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "android.content.res.ExtraConfiguration"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "updateThemeConfiguration"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "themeId"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v0, v5

    invoke-virtual {v4, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-result v0

    :goto_a
    sget-object v2, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Update configuration success ? "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v6

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v1, v7

    goto/16 :goto_7

    :catch_3
    move-exception v0

    move-object v1, v7

    goto/16 :goto_6

    :cond_c
    move-object v1, v0

    goto :goto_9
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method private c()V
    .locals 3

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.bbk.launcher.action.SCENE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->f:Landroid/app/ActivityManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->f:Landroid/app/ActivityManager;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()I
    .locals 4

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "com.bbk.theme"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bbkTheme version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a:Ljava/lang/String;

    const-string v3, "onCreateActivity"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->setContentView(I)V

    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->f:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x400

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    new-instance v0, Lcom/vivo/PCTools/MainActivity/o;

    invoke-direct {v0, p0, v2}, Lcom/vivo/PCTools/MainActivity/o;-><init>(Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;B)V

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->k:Lcom/vivo/PCTools/MainActivity/o;

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->j:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x7f030000

    invoke-static {p0, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f0a0004

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->l:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->l:Landroid/widget/ProgressBar;

    iget v5, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->n:I

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    const v0, 0x7f0a0003

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v5, 0x7f0b014d

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->j:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    :try_start_0
    const-string v4, "com.android.internal.policy.impl.VivoPolicyConstant"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "android.view.WindowManager$LayoutParams"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "PRIVATE_FLAG_HOMEKEY_DISPATCHED"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sput v4, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->d:I

    const-string v4, "privateFlags"

    invoke-virtual {v5, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    sget v6, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->d:I

    or-int/2addr v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "android.view.WindowManager$LayoutParams"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "FLAG_HOMEKEY_DISPATCHED"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->e:I

    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget v4, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->e:I

    or-int/2addr v0, v4

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->j:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->t:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iput-boolean v1, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->s:Z

    iput v2, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->m:I

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->g:Ljava/lang/String;

    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->o:I

    const-string v1, "channelId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->p:I

    sget-object v1, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "path = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DesktopW"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->q:Z

    const-string v1, "LockW"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->r:Z

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->k:Lcom/vivo/PCTools/MainActivity/o;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/MainActivity/o;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->k:Lcom/vivo/PCTools/MainActivity/o;

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/MainActivity/o;->removeMessages(I)V

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->k:Lcom/vivo/PCTools/MainActivity/o;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Lcom/vivo/PCTools/MainActivity/o;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Lcom/vivo/PCTools/Pcserver/e;->getInstance()Lcom/vivo/PCTools/Pcserver/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/PCTools/Pcserver/e;->getAllChannels()Lorg/jboss/netty/channel/group/ChannelGroup;

    move-result-object v2

    iget v3, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jboss/netty/channel/group/ChannelGroup;->find(Ljava/lang/Integer;)Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v3}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {v3, v0}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    iget v4, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->o:I

    invoke-virtual {v3, v4}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {v3, v0}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-boolean v4, p0, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->s:Z

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    int-to-byte v0, v0

    invoke-virtual {v3, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-interface {v2, v3}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    invoke-static {}, Lcom/vivo/PCTools/Pcserver/e;->getInstance()Lcom/vivo/PCTools/Pcserver/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/PCTools/Pcserver/e;->getAllChannels()Lorg/jboss/netty/channel/group/ChannelGroup;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/jboss/netty/channel/group/ChannelGroup;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
