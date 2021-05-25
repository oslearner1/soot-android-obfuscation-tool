.class public final Lcom/vivo/PCTools/g/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/vivo/PCTools/g/d;

.field private b:Lcom/vivo/PCTools/g/i;

.field private c:Lcom/vivo/PCTools/g/k;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/PCTools/g/b;->d:Landroid/content/Context;

    new-instance v0, Lcom/vivo/PCTools/g/d;

    invoke-direct {v0, p1}, Lcom/vivo/PCTools/g/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/PCTools/g/b;->a:Lcom/vivo/PCTools/g/d;

    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 5

    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v3, v0

    mul-long v0, v1, v3

    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "AppManager "

    const-string v1, "getStorageFreeSpace() path is null, return size 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final DoCmdInstallApp(Lcom/vivo/PCTools/q/a/a;Lcom/vivo/PCTools/g/c;)V
    .locals 5

    const/4 v2, 0x0

    const-string v0, "AppManager "

    const-string v1, "DoCmdInstallApp"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    new-instance v1, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v1}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "AppManager "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AppPath = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/vivo/PCTools/g/i;

    iget-object v3, p0, Lcom/vivo/PCTools/g/b;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/vivo/PCTools/g/i;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vivo/PCTools/g/b;->b:Lcom/vivo/PCTools/g/i;

    iget-object v2, p0, Lcom/vivo/PCTools/g/b;->b:Lcom/vivo/PCTools/g/i;

    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/g/i;->GetApkInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/16 v0, -0x11

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    :goto_0
    invoke-virtual {p2, v1}, Lcom/vivo/PCTools/g/c;->SendMegToPC(Lcom/vivo/PCTools/q/a/a;)V

    :goto_1
    return-void

    :cond_0
    iget-object v3, p0, Lcom/vivo/PCTools/g/b;->b:Lcom/vivo/PCTools/g/i;

    invoke-virtual {v3, v0}, Lcom/vivo/PCTools/g/i;->DirectInstallApk(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/vivo/PCTools/BaseApplication;->SavePath(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {p2, v1}, Lcom/vivo/PCTools/g/c;->SendMegToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_1
.end method

.method public final DoCmdMoveApp(Lcom/vivo/PCTools/q/a/a;Lcom/vivo/PCTools/g/c;)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v6, 0x0

    const-string v2, "AppManager "

    const-string v3, "beging to DoCmdMoveApp"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v2}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {v2, v6}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    const-string v3, "AppManager "

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MegId is : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v2, v6}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/vivo/PCTools/BaseApplication;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".programestore_rec_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Lcom/vivo/PCTools/g/e;

    invoke-direct {v3}, Lcom/vivo/PCTools/g/e;-><init>()V

    invoke-virtual {v3, v4}, Lcom/vivo/PCTools/g/e;->parseMovePackageInfo(Ljava/io/InputStream;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppManager "

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "packagename is"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Flags"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v0, "AppManager "

    const-string v1, "get data from pc is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {p2, v2}, Lcom/vivo/PCTools/g/c;->SendMegToPC(Lcom/vivo/PCTools/q/a/a;)V

    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string v5, "MOVE_EXTERNAL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    const/4 v1, 0x0

    aget-object v1, v3, v1

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v1, v0, v3}, Lcom/vivo/PCTools/g/b;->MoveAppWrap(Ljava/lang/String;II)I

    move-result v0

    const-string v1, "AppManager "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "retcode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {p2, v2}, Lcom/vivo/PCTools/g/c;->SendMegToPC(Lcom/vivo/PCTools/q/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final DoCmdUnInstallApp(Lcom/vivo/PCTools/q/a/a;Lcom/vivo/PCTools/g/c;)V
    .locals 7

    const/4 v6, 0x0

    const-string v0, "AppManager "

    const-string v1, "DoCmdUnInstallApp"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v0

    new-instance v1, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v1}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {p2, v1}, Lcom/vivo/PCTools/g/c;->SendMegToPC(Lcom/vivo/PCTools/q/a/a;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v3

    invoke-static {v2, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v4

    const-string v5, "utf-8"

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v0, v4

    new-array v0, v0, [B

    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    const-string v0, "AppManager "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "packagename is"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/vivo/PCTools/g/k;

    iget-object v3, p0, Lcom/vivo/PCTools/g/b;->d:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/vivo/PCTools/g/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/PCTools/g/b;->c:Lcom/vivo/PCTools/g/k;

    iget-object v0, p0, Lcom/vivo/PCTools/g/b;->c:Lcom/vivo/PCTools/g/k;

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/g/k;->UninstallPackage(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {p2, v1}, Lcom/vivo/PCTools/g/c;->SendMegToPC(Lcom/vivo/PCTools/q/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {p2, v1}, Lcom/vivo/PCTools/g/c;->SendMegToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0
.end method

.method public final MoveAppWrap(Ljava/lang/String;II)I
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    int-to-long v2, p3

    const-string v4, "AppManager "

    const-string v5, "come to JudgeisOverFolw"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    const-string v4, "AppManager "

    const-string v5, "move to  /mnt/sdcard/"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/PCTools/g/b;->a(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "AppManager "

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sdcard free size = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v2, v4, v2

    if-gez v2, :cond_1

    const-string v2, "AppManager "

    const-string v3, "have over flow"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v1, :cond_4

    const/4 v0, -0x2

    goto :goto_0

    :cond_1
    const-string v1, "AppManager "

    const-string v2, "did not  over flow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_1

    :cond_2
    const-string v2, "AppManager "

    const-string v3, "move to  /data/app"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/PCTools/g/b;->a(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0xc800

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    const-string v2, "AppManager "

    const-string v3, "have over flow"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v1, "AppManager "

    const-string v2, "did not  over flow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/vivo/PCTools/g/j;

    iget-object v2, p0, Lcom/vivo/PCTools/g/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/vivo/PCTools/g/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/vivo/PCTools/g/j;->MoveApp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final appInfoSend(Lcom/vivo/PCTools/q/a/a;Lcom/vivo/PCTools/g/c;)V
    .locals 7

    const/4 v5, 0x4

    const/4 v4, 0x0

    const-string v0, "AppManager "

    const-string v1, "appInfoSend"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logV(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v1}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {v1, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    const-string v0, "AppManager "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MegId is : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    new-array v0, v4, [B

    invoke-virtual {v1, v0, v4}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {v1, v4}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vivo/PCTools/BaseApplication;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".sms_send_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "pcapp.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    :try_start_0
    iget-object v2, p0, Lcom/vivo/PCTools/g/b;->a:Lcom/vivo/PCTools/g/d;

    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/g/d;->createXml(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vivo/PCTools/g/b;->a:Lcom/vivo/PCTools/g/d;

    invoke-virtual {v2}, Lcom/vivo/PCTools/g/d;->getXmlLength()I

    move-result v2

    const-string v3, "AppManager "

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "XmlLength is : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    const-string v4, "AppManager "

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BodyLength(filename length) is : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "filename is : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->intToByte(I[BI)V

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    invoke-virtual {p2, v1}, Lcom/vivo/PCTools/g/c;->SendMegToPC(Lcom/vivo/PCTools/q/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p2, v1}, Lcom/vivo/PCTools/g/c;->SendMegToPC(Lcom/vivo/PCTools/q/a/a;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
