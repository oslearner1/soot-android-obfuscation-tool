.class public abstract Landroid/support/v4/media/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private c:I

.field private d:Landroid/support/v4/media/at;

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/media/c;->a:I

    iput p2, p0, Landroid/support/v4/media/c;->b:I

    iput p3, p0, Landroid/support/v4/media/c;->c:I

    return-void
.end method

.method public static getFactory$142b553()Landroid/support/v4/media/c;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/a;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLog(Ljava/lang/String;)Lorg/apache/commons/logging/a;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static objectId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static release(Ljava/lang/ClassLoader;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static releaseAll()V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getAttributeNames()[Ljava/lang/String;
.end method

.method public getCurrentVolume()I
    .locals 1

    iget v0, p0, Landroid/support/v4/media/c;->c:I

    return v0
.end method

.method public abstract getInstance(Ljava/lang/Class;)Lorg/apache/commons/logging/a;
.end method

.method public abstract getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/a;
.end method

.method public getMaxVolume()I
    .locals 1

    iget v0, p0, Landroid/support/v4/media/c;->b:I

    return v0
.end method

.method public getVolumeControl()I
    .locals 1

    iget v0, p0, Landroid/support/v4/media/c;->a:I

    return v0
.end method

.method public getVolumeProvider()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/media/c;->e:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/c;->e:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Landroid/support/v4/media/c;->a:I

    iget v1, p0, Landroid/support/v4/media/c;->b:I

    iget v2, p0, Landroid/support/v4/media/c;->c:I

    new-instance v3, Landroid/support/v4/media/av;

    invoke-direct {v3, p0}, Landroid/support/v4/media/av;-><init>(Landroid/support/v4/media/c;)V

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat;->createVolumeProvider(IIILandroid/support/v4/media/av;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/c;->e:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/media/c;->e:Ljava/lang/Object;

    goto :goto_0
.end method

.method public onAdjustVolume(I)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onItemLoaded(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
    .locals 0

    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 0

    return-void
.end method

.method public abstract release()V
.end method

.method public abstract removeAttribute(Ljava/lang/String;)V
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public setCallback(Landroid/support/v4/media/at;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/c;->d:Landroid/support/v4/media/at;

    return-void
.end method

.method public setCurrentVolume(I)V
    .locals 1

    iput p1, p0, Landroid/support/v4/media/c;->c:I

    invoke-virtual {p0}, Landroid/support/v4/media/c;->getVolumeProvider()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat;->setCurrentVolume(Ljava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/c;->d:Landroid/support/v4/media/at;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/c;->d:Landroid/support/v4/media/at;

    invoke-virtual {v0, p0}, Landroid/support/v4/media/at;->onVolumeChanged$3c5a58fd(Landroid/support/v4/media/c;)V

    :cond_1
    return-void
.end method
