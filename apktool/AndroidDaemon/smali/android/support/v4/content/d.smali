.class final Landroid/support/v4/content/d;
.super Landroid/support/v4/content/c;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/content/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/os/a;)Landroid/database/Cursor;
    .locals 7

    if-eqz p7, :cond_0

    :try_start_0
    invoke-virtual {p7}, Landroid/support/v4/os/a;->getCancellationSignalObject()Ljava/lang/Object;

    move-result-object v6

    :goto_0
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v6}, Landroid/support/v4/content/c;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Landroid/os/OperationCanceledException;

    if-eqz v1, :cond_1

    new-instance v0, Landroid/support/v4/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/support/v4/os/OperationCanceledException;-><init>()V

    throw v0

    :cond_1
    throw v0
.end method
