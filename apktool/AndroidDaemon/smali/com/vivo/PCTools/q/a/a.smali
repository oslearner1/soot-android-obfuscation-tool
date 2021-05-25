.class public final Lcom/vivo/PCTools/q/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static a:I


# instance fields
.field private b:S

.field private c:S

.field private d:I

.field private e:S

.field private f:B

.field private g:B

.field private h:[B

.field private i:I

.field private j:[B

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-short v0, p0, Lcom/vivo/PCTools/q/a/a;->b:S

    iput-short v1, p0, Lcom/vivo/PCTools/q/a/a;->c:S

    iput v1, p0, Lcom/vivo/PCTools/q/a/a;->d:I

    iput-short v1, p0, Lcom/vivo/PCTools/q/a/a;->e:S

    iput-byte v1, p0, Lcom/vivo/PCTools/q/a/a;->f:B

    iput v1, p0, Lcom/vivo/PCTools/q/a/a;->i:I

    iput-object v2, p0, Lcom/vivo/PCTools/q/a/a;->h:[B

    iput-object v2, p0, Lcom/vivo/PCTools/q/a/a;->j:[B

    iput-boolean v1, p0, Lcom/vivo/PCTools/q/a/a;->k:Z

    return-void
.end method

.method public static declared-synchronized MakeMsgId()I
    .locals 2

    const-class v1, Lcom/vivo/PCTools/q/a/a;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/vivo/PCTools/q/a/a;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vivo/PCTools/q/a/a;->a:I

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    sput v0, Lcom/vivo/PCTools/q/a/a;->a:I

    :cond_0
    sget v0, Lcom/vivo/PCTools/q/a/a;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static ResumeMakeMsgID()V
    .locals 1

    const/high16 v0, -0x80000000

    sput v0, Lcom/vivo/PCTools/q/a/a;->a:I

    return-void
.end method

.method public static formatTimeStampForMessage(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static int2Bytes(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x3

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public final ByteToLong([B)J
    .locals 5

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    int-to-long v0, v0

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x6

    aget-byte v2, p1, v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x7

    aget-byte v2, p1, v2

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/q/a/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public final debug(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "version = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v1, p0, Lcom/vivo/PCTools/q/a/a;->b:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "append length = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v1, p0, Lcom/vivo/PCTools/q/a/a;->c:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "megid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vivo/PCTools/q/a/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "module = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v1, p0, Lcom/vivo/PCTools/q/a/a;->e:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cmd = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lcom/vivo/PCTools/q/a/a;->f:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "relyCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lcom/vivo/PCTools/q/a/a;->g:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bodyLength = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vivo/PCTools/q/a/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getAppend()[B
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/q/a/a;->h:[B

    return-object v0
.end method

.method public final getBody()[B
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/q/a/a;->j:[B

    return-object v0
.end method

.method public final getBodyLength()I
    .locals 1

    iget v0, p0, Lcom/vivo/PCTools/q/a/a;->i:I

    return v0
.end method

.method public final getBodyLengthByte()[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget v1, p0, Lcom/vivo/PCTools/q/a/a;->i:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->intToByte(I[BI)V

    return-object v0
.end method

.method public final getCmd()B
    .locals 1

    iget-byte v0, p0, Lcom/vivo/PCTools/q/a/a;->f:B

    return v0
.end method

.method public final getHeadLengthByte()[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    iget-short v1, p0, Lcom/vivo/PCTools/q/a/a;->c:S

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->shortToByte(S[BI)V

    return-object v0
.end method

.method public final getHeadLengthShort()S
    .locals 1

    iget-short v0, p0, Lcom/vivo/PCTools/q/a/a;->c:S

    return v0
.end method

.method public final getMegIdByte()[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget v1, p0, Lcom/vivo/PCTools/q/a/a;->d:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->intToByte(I[BI)V

    return-object v0
.end method

.method public final getMegIdInt()I
    .locals 1

    iget v0, p0, Lcom/vivo/PCTools/q/a/a;->d:I

    return v0
.end method

.method public final getModuleByte()[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    iget-short v1, p0, Lcom/vivo/PCTools/q/a/a;->e:S

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->shortToByte(S[BI)V

    return-object v0
.end method

.method public final getModuleShort()S
    .locals 1

    iget-short v0, p0, Lcom/vivo/PCTools/q/a/a;->e:S

    return v0
.end method

.method public final getRelyCode()B
    .locals 1

    iget-byte v0, p0, Lcom/vivo/PCTools/q/a/a;->g:B

    return v0
.end method

.method public final getVersionByte()[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    iget-short v1, p0, Lcom/vivo/PCTools/q/a/a;->b:S

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->shortToByte(S[BI)V

    return-object v0
.end method

.method public final getVersionShort()S
    .locals 1

    iget-short v0, p0, Lcom/vivo/PCTools/q/a/a;->b:S

    return v0
.end method

.method public final reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/vivo/PCTools/q/a/a;->c:S

    iput-byte v0, p0, Lcom/vivo/PCTools/q/a/a;->f:B

    iput v0, p0, Lcom/vivo/PCTools/q/a/a;->i:I

    iput-object v1, p0, Lcom/vivo/PCTools/q/a/a;->h:[B

    iput-object v1, p0, Lcom/vivo/PCTools/q/a/a;->j:[B

    iput-boolean v0, p0, Lcom/vivo/PCTools/q/a/a;->k:Z

    return-void
.end method

.method public final sendbody(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/PCTools/q/a/a;->k:Z

    return-void
.end method

.method public final sendbody()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/PCTools/q/a/a;->k:Z

    return v0
.end method

.method public final setAppend([BI)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iput-short v1, p0, Lcom/vivo/PCTools/q/a/a;->c:S

    :goto_0
    return-void

    :cond_0
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/vivo/PCTools/q/a/a;->h:[B

    iget-object v0, p0, Lcom/vivo/PCTools/q/a/a;->h:[B

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-short v0, p2

    iput-short v0, p0, Lcom/vivo/PCTools/q/a/a;->c:S

    goto :goto_0
.end method

.method public final setBody([B)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/q/a/a;->j:[B

    return-void
.end method

.method public final setBody([BI)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/q/a/a;->j:[B

    return-void
.end method

.method public final setBodyLength(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/PCTools/q/a/a;->i:I

    return-void
.end method

.method public final setBodyLength([BI)V
    .locals 1

    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->byteToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/vivo/PCTools/q/a/a;->i:I

    return-void
.end method

.method public final setCmd(B)V
    .locals 0

    iput-byte p1, p0, Lcom/vivo/PCTools/q/a/a;->f:B

    return-void
.end method

.method public final setHeadLength(S)V
    .locals 0

    iput-short p1, p0, Lcom/vivo/PCTools/q/a/a;->c:S

    return-void
.end method

.method public final setHeadLength([BI)V
    .locals 1

    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->byteToShort([BI)S

    move-result v0

    iput-short v0, p0, Lcom/vivo/PCTools/q/a/a;->c:S

    return-void
.end method

.method public final setMegId(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/PCTools/q/a/a;->d:I

    return-void
.end method

.method public final setMegId([BI)V
    .locals 1

    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->byteToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/vivo/PCTools/q/a/a;->d:I

    return-void
.end method

.method public final setModule(S)V
    .locals 0

    iput-short p1, p0, Lcom/vivo/PCTools/q/a/a;->e:S

    return-void
.end method

.method public final setModule([BI)V
    .locals 1

    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->byteToShort([BI)S

    move-result v0

    iput-short v0, p0, Lcom/vivo/PCTools/q/a/a;->e:S

    return-void
.end method

.method public final setRelyCode(B)V
    .locals 0

    iput-byte p1, p0, Lcom/vivo/PCTools/q/a/a;->g:B

    return-void
.end method

.method public final setVersion(S)V
    .locals 0

    iput-short p1, p0, Lcom/vivo/PCTools/q/a/a;->b:S

    return-void
.end method

.method public final setVersion([BI)V
    .locals 1

    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->byteToShort([BI)S

    move-result v0

    iput-short v0, p0, Lcom/vivo/PCTools/q/a/a;->b:S

    return-void
.end method
