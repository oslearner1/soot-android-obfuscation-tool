.class public final Landroid/support/v4/media/session/PlaybackStateCompat;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:J

.field private final c:J

.field private final d:F

.field private final e:J

.field private final f:Ljava/lang/CharSequence;

.field private final g:J

.field private h:Ljava/util/List;

.field private final i:J

.field private final j:Landroid/os/Bundle;

.field private k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/media/session/an;

    invoke-direct {v0}, Landroid/support/v4/media/session/an;-><init>()V

    sput-object v0, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    iput-wide p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    iput-wide p4, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    iput p6, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    iput-wide p7, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    iput-object p9, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->f:Ljava/lang/CharSequence;

    iput-wide p10, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->g:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:Ljava/util/List;

    iput-wide p13, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->i:J

    move-object/from16 v0, p15

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->j:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;B)V
    .locals 0

    invoke-direct/range {p0 .. p15}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->g:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->f:Ljava/lang/CharSequence;

    sget-object v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->i:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->j:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/media/session/PlaybackStateCompat;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    return v0
.end method

.method static synthetic b(Landroid/support/v4/media/session/PlaybackStateCompat;)J
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    return-wide v0
.end method

.method static synthetic c(Landroid/support/v4/media/session/PlaybackStateCompat;)F
    .locals 1

    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    return v0
.end method

.method static synthetic d(Landroid/support/v4/media/session/PlaybackStateCompat;)J
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->g:J

    return-wide v0
.end method

.method static synthetic e(Landroid/support/v4/media/session/PlaybackStateCompat;)J
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    return-wide v0
.end method

.method static synthetic f(Landroid/support/v4/media/session/PlaybackStateCompat;)J
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    return-wide v0
.end method

.method public static fromPlaybackState(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 17

    if-eqz p0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/c;->getCustomActions(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v13, 0x0

    if-eqz v1, :cond_2

    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->fromCustomAction(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_3

    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/j;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v16

    :goto_2
    new-instance v1, Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/c;->getState(Ljava/lang/Object;)I

    move-result v2

    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/c;->getPosition(Ljava/lang/Object;)J

    move-result-wide v3

    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/c;->getBufferedPosition(Ljava/lang/Object;)J

    move-result-wide v5

    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/c;->getPlaybackSpeed(Ljava/lang/Object;)F

    move-result v7

    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/c;->getActions(Ljava/lang/Object;)J

    move-result-wide v8

    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/c;->getErrorMessage(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/c;->getLastPositionUpdateTime(Ljava/lang/Object;)J

    move-result-wide v11

    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/c;->getActiveQueueItemId(Ljava/lang/Object;)J

    move-result-wide v14

    invoke-direct/range {v1 .. v16}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    move-object/from16 v0, p0

    iput-object v0, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->k:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/16 v16, 0x0

    goto :goto_2
.end method

.method static synthetic g(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic h(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Landroid/support/v4/media/session/PlaybackStateCompat;)J
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->i:J

    return-wide v0
.end method

.method static synthetic j(Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->j:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getActions()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    return-wide v0
.end method

.method public final getActiveQueueItemId()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->i:J

    return-wide v0
.end method

.method public final getBufferedPosition()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    return-wide v0
.end method

.method public final getCustomActions()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:Ljava/util/List;

    return-object v0
.end method

.method public final getErrorMessage()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->j:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getLastPositionUpdateTime()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->g:J

    return-wide v0
.end method

.method public final getPlaybackSpeed()F
    .locals 1

    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    return v0
.end method

.method public final getPlaybackState()Ljava/lang/Object;
    .locals 15

    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->k:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->k:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_1
    const/4 v11, 0x0

    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:Ljava/util/List;

    if-eqz v0, :cond_2

    new-instance v11, Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getCustomAction()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    iget-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    iget-wide v3, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    iget v5, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    iget-wide v6, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    iget-object v8, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->f:Ljava/lang/CharSequence;

    iget-wide v9, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->g:J

    iget-wide v12, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->i:J

    iget-object v14, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->j:Landroid/os/Bundle;

    invoke-static/range {v0 .. v14}, Landroid/support/v4/media/session/j;->newInstance(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->k:Ljava/lang/Object;

    :goto_2
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->k:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    iget-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    iget-wide v3, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    iget v5, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    iget-wide v6, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    iget-object v8, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->f:Ljava/lang/CharSequence;

    iget-wide v9, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->g:J

    iget-wide v12, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->i:J

    invoke-static/range {v0 .. v13}, Landroid/support/v4/media/session/c;->newInstance(IJJFJLjava/lang/CharSequence;JLjava/util/List;J)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->k:Ljava/lang/Object;

    goto :goto_2
.end method

.method public final getPosition()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    return-wide v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlaybackState {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", buffered position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->f:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", custom actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", active item id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->f:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->j:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
