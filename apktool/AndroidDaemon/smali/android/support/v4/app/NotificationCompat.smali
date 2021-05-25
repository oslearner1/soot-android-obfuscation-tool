.class public final Landroid/support/v4/app/NotificationCompat;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/support/v4/app/bp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/app/br;

    invoke-direct {v0}, Landroid/support/v4/app/br;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompat;->a:Landroid/support/v4/app/bp;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/app/bq;

    invoke-direct {v0}, Landroid/support/v4/app/bq;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompat;->a:Landroid/support/v4/app/bp;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/app/bw;

    invoke-direct {v0}, Landroid/support/v4/app/bw;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompat;->a:Landroid/support/v4/app/bp;

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/app/bv;

    invoke-direct {v0}, Landroid/support/v4/app/bv;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompat;->a:Landroid/support/v4/app/bp;

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    new-instance v0, Landroid/support/v4/app/bu;

    invoke-direct {v0}, Landroid/support/v4/app/bu;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompat;->a:Landroid/support/v4/app/bp;

    goto :goto_0

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    new-instance v0, Landroid/support/v4/app/bt;

    invoke-direct {v0}, Landroid/support/v4/app/bt;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompat;->a:Landroid/support/v4/app/bp;

    goto :goto_0

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    new-instance v0, Landroid/support/v4/app/bs;

    invoke-direct {v0}, Landroid/support/v4/app/bs;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompat;->a:Landroid/support/v4/app/bp;

    goto :goto_0

    :cond_6
    new-instance v0, Landroid/support/v4/app/bp;

    invoke-direct {v0}, Landroid/support/v4/app/bp;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompat;->a:Landroid/support/v4/app/bp;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/support/v4/app/bp;
    .locals 1

    sget-object v0, Landroid/support/v4/app/NotificationCompat;->a:Landroid/support/v4/app/bp;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/app/bi;Ljava/util/ArrayList;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationCompat$Action;

    invoke-interface {p0, v0}, Landroid/support/v4/app/bi;->addAction(Landroid/support/v4/app/by;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/bj;Landroid/support/v4/app/bx;)V
    .locals 7

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->d:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->f:Z

    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->e:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->a:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompatJellybean;->addBigTextStyle(Landroid/support/v4/app/bj;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$InboxStyle;->d:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/NotificationCompat$InboxStyle;->f:Z

    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$InboxStyle;->e:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$InboxStyle;->a:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompatJellybean;->addInboxStyle(Landroid/support/v4/app/bj;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->d:Ljava/lang/CharSequence;

    iget-boolean v2, p1, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->f:Z

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->e:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->a:Landroid/graphics/Bitmap;

    iget-object v5, p1, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->b:Landroid/graphics/Bitmap;

    iget-boolean v6, p1, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->c:Z

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v4/app/NotificationCompatJellybean;->addBigPictureStyle(Landroid/support/v4/app/bj;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, [Landroid/app/Notification;

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    check-cast v0, [Landroid/app/Notification;

    :goto_0
    return-object v0

    :cond_1
    array-length v1, v0

    new-array v3, v1, [Landroid/app/Notification;

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_2

    aget-object v1, v0, v2

    check-cast v1, Landroid/app/Notification;

    aput-object v1, v3, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public static getAction(Landroid/app/Notification;I)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 1

    sget-object v0, Landroid/support/v4/app/NotificationCompat;->a:Landroid/support/v4/app/bp;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/bp;->getAction(Landroid/app/Notification;I)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    return-object v0
.end method

.method public static getActionCount(Landroid/app/Notification;)I
    .locals 1

    sget-object v0, Landroid/support/v4/app/NotificationCompat;->a:Landroid/support/v4/app/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/bp;->getActionCount(Landroid/app/Notification;)I

    move-result v0

    return v0
.end method

.method public static getCategory(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v4/app/NotificationCompat;->a:Landroid/support/v4/app/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/bp;->getCategory(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 1

    sget-object v0, Landroid/support/v4/app/NotificationCompat;->a:Landroid/support/v4/app/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/bp;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getGroup(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v4/app/NotificationCompat;->a:Landroid/support/v4/app/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/bp;->getGroup(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalOnly(Landroid/app/Notification;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/app/NotificationCompat;->a:Landroid/support/v4/app/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/bp;->getLocalOnly(Landroid/app/Notification;)Z

    move-result v0

    return v0
.end method

.method public static getSortKey(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v4/app/NotificationCompat;->a:Landroid/support/v4/app/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/bp;->getSortKey(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isGroupSummary(Landroid/app/Notification;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/app/NotificationCompat;->a:Landroid/support/v4/app/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/bp;->isGroupSummary(Landroid/app/Notification;)Z

    move-result v0

    return v0
.end method
