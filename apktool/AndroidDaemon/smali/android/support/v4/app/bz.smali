.class public Landroid/support/v4/app/bz;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/ch;)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 7

    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action;

    move-object v5, p5

    check-cast v5, [Landroid/support/v4/app/RemoteInput;

    const/4 v6, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;B)V

    return-object v0
.end method

.method public bridge synthetic build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/ch;)Landroid/support/v4/app/by;
    .locals 1

    invoke-virtual/range {p0 .. p5}, Landroid/support/v4/app/bz;->build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/ch;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/v4/app/NotificationCompat$Action;
    .locals 1

    new-array v0, p1, [Landroid/support/v4/app/NotificationCompat$Action;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Landroid/support/v4/app/by;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/bz;->newArray(I)[Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    return-object v0
.end method
