.class public Landroid/support/v4/app/NotificationCompat$Action;
.super Landroid/support/v4/app/by;


# static fields
.field public static final d:Landroid/support/v4/app/bz;


# instance fields
.field public a:I

.field public b:Ljava/lang/CharSequence;

.field public c:Landroid/app/PendingIntent;

.field private final e:Landroid/os/Bundle;

.field private final f:[Landroid/support/v4/app/RemoteInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/app/bz;

    invoke-direct {v0}, Landroid/support/v4/app/bz;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompat$Action;->d:Landroid/support/v4/app/bz;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 6

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/by;-><init>()V

    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Action;->a:I

    invoke-static {p2}, Landroid/support/v4/app/bm;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->b:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/support/v4/app/NotificationCompat$Action;->c:Landroid/app/PendingIntent;

    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Landroid/support/v4/app/NotificationCompat$Action;->e:Landroid/os/Bundle;

    iput-object p5, p0, Landroid/support/v4/app/NotificationCompat$Action;->f:[Landroid/support/v4/app/RemoteInput;

    return-void

    :cond_0
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method synthetic constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;B)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->e:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public getActionIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->c:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    iget v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->a:I

    return v0
.end method

.method public getRemoteInputs()[Landroid/support/v4/app/RemoteInput;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->f:[Landroid/support/v4/app/RemoteInput;

    return-object v0
.end method

.method public bridge synthetic getRemoteInputs()[Landroid/support/v4/app/ch;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->b:Ljava/lang/CharSequence;

    return-object v0
.end method
