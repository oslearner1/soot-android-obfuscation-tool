.class public final Landroid/support/v4/content/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/support/v4/content/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/content/d;

    invoke-direct {v0}, Landroid/support/v4/content/d;-><init>()V

    sput-object v0, Landroid/support/v4/content/b;->a:Landroid/support/v4/content/c;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/content/c;

    invoke-direct {v0}, Landroid/support/v4/content/c;-><init>()V

    sput-object v0, Landroid/support/v4/content/b;->a:Landroid/support/v4/content/c;

    goto :goto_0
.end method

.method public static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/os/a;)Landroid/database/Cursor;
    .locals 8

    sget-object v0, Landroid/support/v4/content/b;->a:Landroid/support/v4/content/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/support/v4/content/c;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/os/a;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
