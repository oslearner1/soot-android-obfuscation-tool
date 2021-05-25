.class public abstract Landroid/support/v4/app/be;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableDebugLogging(Z)V
    .locals 0

    sput-boolean p0, Landroid/support/v4/app/bf;->a:Z

    return-void
.end method


# virtual methods
.method public abstract destroyLoader(I)V
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getLoader(I)Landroid/support/v4/content/g;
.end method

.method public hasRunningLoaders()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract initLoader$71be8de6(ILandroid/os/Bundle;Landroid/support/v4/media/routing/d;)Landroid/support/v4/content/g;
.end method

.method public abstract restartLoader$71be8de6(ILandroid/os/Bundle;Landroid/support/v4/media/routing/d;)Landroid/support/v4/content/g;
.end method
