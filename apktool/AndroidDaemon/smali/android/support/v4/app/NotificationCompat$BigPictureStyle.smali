.class public Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
.super Landroid/support/v4/app/bx;


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/bx;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/bm;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/bx;-><init>()V

    invoke-virtual {p0, p1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setBuilder(Landroid/support/v4/app/bm;)V

    return-void
.end method


# virtual methods
.method public bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    .locals 1

    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->b:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->c:Z

    return-object p0
.end method

.method public bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/app/bm;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/app/bm;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->e:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->f:Z

    return-object p0
.end method
