.class public final Lcom/vivo/PCTools/util/StorageManagerWrapper;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/vivo/PCTools/util/StorageManagerWrapper;


# instance fields
.field private a:Ljava/lang/reflect/Method;

.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/Object;

.field private d:Z


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/vivo/PCTools/util/StorageManagerWrapper;->d:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    iput-object p1, p0, Lcom/vivo/PCTools/util/StorageManagerWrapper;->c:Ljava/lang/Object;

    const-string v1, "getVolumePaths"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/PCTools/util/StorageManagerWrapper;->a:Ljava/lang/reflect/Method;

    const-string v1, "getVolumeState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/util/StorageManagerWrapper;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-boolean v5, p0, Lcom/vivo/PCTools/util/StorageManagerWrapper;->d:Z

    const-string v0, "StorageManagerWrapper"

    const-string v1, "getVolumePaths failed"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/vivo/PCTools/util/StorageManagerWrapper;
    .locals 1

    sget-object v0, Lcom/vivo/PCTools/util/StorageManagerWrapper;->e:Lcom/vivo/PCTools/util/StorageManagerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vivo/PCTools/util/StorageManagerWrapper;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/util/StorageManagerWrapper;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/vivo/PCTools/util/StorageManagerWrapper;->e:Lcom/vivo/PCTools/util/StorageManagerWrapper;

    :cond_0
    sget-object v0, Lcom/vivo/PCTools/util/StorageManagerWrapper;->e:Lcom/vivo/PCTools/util/StorageManagerWrapper;

    return-object v0
.end method

.method public static geteMMCSize()J
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    const-string v1, "sys/class/block/mmcblk0/size"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const/16 v2, 0x9

    shl-long/2addr v0, v2

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static isEnougthSpace(Landroid/content/Context;J)Z
    .locals 10

    const-wide/16 v2, 0x0

    invoke-static {p0}, Lcom/vivo/PCTools/util/a;->GetExterSDPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/vivo/PCTools/util/a;->GetInterSDPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v7, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getFreeBlocks()I

    mul-long v0, v7, v5

    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v8, v4

    invoke-virtual {v5}, Landroid/os/StatFs;->getFreeBlocks()I

    mul-long v4, v8, v6

    :goto_1
    add-long/2addr v0, v4

    sub-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    move-wide v4, v2

    goto :goto_1

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final externalStorageMounted()Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/vivo/PCTools/util/StorageManagerWrapper;->getVolumePaths()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    aget-object v4, v2, v1

    sget-object v5, Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;->ExternalStorage:Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

    invoke-virtual {p0, v4}, Lcom/vivo/PCTools/util/StorageManagerWrapper;->getStorageType(Ljava/lang/String;)Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

    move-result-object v6

    if-ne v5, v6, :cond_1

    const-string v0, "mounted"

    invoke-virtual {p0, v4}, Lcom/vivo/PCTools/util/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final getStorageType(Ljava/lang/String;)Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;
    .locals 1

    const-string v0, "/external_sd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/sdcard1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;->ExternalStorage:Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "/sdcard0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/sdcard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;->InternalStorage:Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

    goto :goto_0

    :cond_3
    const-string v0, "/otg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;->UsbStorage:Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;->InternalStorage:Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

    goto :goto_0
.end method

.method public final getVolumePaths()[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/vivo/PCTools/util/StorageManagerWrapper;->d:Z

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/util/StorageManagerWrapper;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/vivo/PCTools/util/StorageManagerWrapper;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v0, v3, [Ljava/lang/String;

    goto :goto_0
.end method

.method public final getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/vivo/PCTools/util/StorageManagerWrapper;->d:Z

    if-nez v0, :cond_0

    const-string v0, "removed"

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/util/StorageManagerWrapper;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/vivo/PCTools/util/StorageManagerWrapper;->c:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "removed"

    goto :goto_0
.end method

.method public final innerStorageMounted()Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/vivo/PCTools/util/StorageManagerWrapper;->getVolumePaths()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    aget-object v4, v2, v1

    sget-object v5, Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;->InternalStorage:Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

    invoke-virtual {p0, v4}, Lcom/vivo/PCTools/util/StorageManagerWrapper;->getStorageType(Ljava/lang/String;)Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

    move-result-object v6

    if-ne v5, v6, :cond_1

    const-string v0, "mounted"

    invoke-virtual {p0, v4}, Lcom/vivo/PCTools/util/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
