.class public Landroid/support/v4/media/MediaBrowserCompat;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/support/v4/media/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/app/s;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/media/d;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v4/media/d;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/app/s;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->a:Landroid/support/v4/media/d;

    return-void
.end method

.method public static build(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p0, Landroid/media/MediaMetadata$Builder;

    invoke-virtual {p0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static createVolumeProvider(IIILandroid/support/v4/media/av;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/v4/media/au;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v4/media/au;-><init>(IIILandroid/support/v4/media/av;)V

    return-object v0
.end method

.method public static getBitmap(Ljava/lang/Object;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    check-cast p0, Landroid/media/MediaMetadata;

    invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getLong(Ljava/lang/Object;Ljava/lang/String;)J
    .locals 2

    check-cast p0, Landroid/media/MediaMetadata;

    invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPercentRating(Ljava/lang/Object;)F
    .locals 1

    check-cast p0, Landroid/media/Rating;

    invoke-virtual {p0}, Landroid/media/Rating;->getPercentRating()F

    move-result v0

    return v0
.end method

.method public static getRating(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    check-cast p0, Landroid/media/MediaMetadata;

    invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    move-result-object v0

    return-object v0
.end method

.method public static getRatingStyle(Ljava/lang/Object;)I
    .locals 1

    check-cast p0, Landroid/media/Rating;

    invoke-virtual {p0}, Landroid/media/Rating;->getRatingStyle()I

    move-result v0

    return v0
.end method

.method public static getStarRating(Ljava/lang/Object;)F
    .locals 1

    check-cast p0, Landroid/media/Rating;

    invoke-virtual {p0}, Landroid/media/Rating;->getStarRating()F

    move-result v0

    return v0
.end method

.method public static getText(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    check-cast p0, Landroid/media/MediaMetadata;

    invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static hasHeart(Ljava/lang/Object;)Z
    .locals 1

    check-cast p0, Landroid/media/Rating;

    invoke-virtual {p0}, Landroid/media/Rating;->hasHeart()Z

    move-result v0

    return v0
.end method

.method public static isRated(Ljava/lang/Object;)Z
    .locals 1

    check-cast p0, Landroid/media/Rating;

    invoke-virtual {p0}, Landroid/media/Rating;->isRated()Z

    move-result v0

    return v0
.end method

.method public static isThumbUp(Ljava/lang/Object;)Z
    .locals 1

    check-cast p0, Landroid/media/Rating;

    invoke-virtual {p0}, Landroid/media/Rating;->isThumbUp()Z

    move-result v0

    return v0
.end method

.method public static keySet(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    check-cast p0, Landroid/media/MediaMetadata;

    invoke-virtual {p0}, Landroid/media/MediaMetadata;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static newHeartRating(Z)Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Landroid/media/Rating;->newHeartRating(Z)Landroid/media/Rating;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    return-object v0
.end method

.method public static newPercentageRating(F)Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Landroid/media/Rating;->newPercentageRating(F)Landroid/media/Rating;

    move-result-object v0

    return-object v0
.end method

.method public static newStarRating(IF)Ljava/lang/Object;
    .locals 1

    invoke-static {p0, p1}, Landroid/media/Rating;->newStarRating(IF)Landroid/media/Rating;

    move-result-object v0

    return-object v0
.end method

.method public static newThumbRating(Z)Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Landroid/media/Rating;->newThumbRating(Z)Landroid/media/Rating;

    move-result-object v0

    return-object v0
.end method

.method public static newUnratedRating(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Landroid/media/Rating;->newUnratedRating(I)Landroid/media/Rating;

    move-result-object v0

    return-object v0
.end method

.method public static putBitmap(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    check-cast p0, Landroid/media/MediaMetadata$Builder;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    return-void
.end method

.method public static putLong(Ljava/lang/Object;Ljava/lang/String;J)V
    .locals 0

    check-cast p0, Landroid/media/MediaMetadata$Builder;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    return-void
.end method

.method public static putRating(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Landroid/media/MediaMetadata$Builder;

    check-cast p2, Landroid/media/Rating;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putRating(Ljava/lang/String;Landroid/media/Rating;)Landroid/media/MediaMetadata$Builder;

    return-void
.end method

.method public static putString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    check-cast p0, Landroid/media/MediaMetadata$Builder;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    return-void
.end method

.method public static putText(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    check-cast p0, Landroid/media/MediaMetadata$Builder;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata$Builder;

    return-void
.end method

.method public static setCurrentVolume(Ljava/lang/Object;I)V
    .locals 0

    check-cast p0, Landroid/media/VolumeProvider;

    invoke-virtual {p0, p1}, Landroid/media/VolumeProvider;->setCurrentVolume(I)V

    return-void
.end method


# virtual methods
.method public final connect()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->a:Landroid/support/v4/media/d;

    invoke-virtual {v0}, Landroid/support/v4/media/d;->connect()V

    return-void
.end method

.method public final disconnect()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->a:Landroid/support/v4/media/d;

    invoke-virtual {v0}, Landroid/support/v4/media/d;->disconnect()V

    return-void
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->a:Landroid/support/v4/media/d;

    invoke-virtual {v0}, Landroid/support/v4/media/d;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getItem(Ljava/lang/String;Landroid/support/v4/media/c;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->a:Landroid/support/v4/media/d;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/d;->getItem(Ljava/lang/String;Landroid/support/v4/media/c;)V

    return-void
.end method

.method public final getRoot()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->a:Landroid/support/v4/media/d;

    invoke-virtual {v0}, Landroid/support/v4/media/d;->getRoot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getServiceComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->a:Landroid/support/v4/media/d;

    invoke-virtual {v0}, Landroid/support/v4/media/d;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public final getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->a:Landroid/support/v4/media/d;

    invoke-virtual {v0}, Landroid/support/v4/media/d;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method

.method public final isConnected()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->a:Landroid/support/v4/media/d;

    invoke-virtual {v0}, Landroid/support/v4/media/d;->isConnected()Z

    move-result v0

    return v0
.end method

.method public final subscribe$679fa4aa(Ljava/lang/String;Lcom/vivo/PCTools/Pcserver/a;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->a:Landroid/support/v4/media/d;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/d;->subscribe$679fa4aa(Ljava/lang/String;Lcom/vivo/PCTools/Pcserver/a;)V

    return-void
.end method

.method public final unsubscribe(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->a:Landroid/support/v4/media/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/d;->unsubscribe(Ljava/lang/String;)V

    return-void
.end method
