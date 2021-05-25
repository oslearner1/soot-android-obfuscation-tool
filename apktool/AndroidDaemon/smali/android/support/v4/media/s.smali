.class final Landroid/support/v4/media/s;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

.field c:Lcom/vivo/vcalendar/component/VComponentBuilder;

.field d:Ljava/util/HashSet;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/s;->d:Ljava/util/HashSet;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/media/s;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    return-void
.end method
