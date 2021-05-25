.class public final Lorg/swiftp/ae;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/io/File;

.field private static d:Lorg/swiftp/ProxyConnector;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/swiftp/ac;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/swiftp/ae;->c:Ljava/io/File;

    sput-object v2, Lorg/swiftp/ae;->d:Lorg/swiftp/ProxyConnector;

    sput-object v2, Lorg/swiftp/ae;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChrootDir()Ljava/io/File;
    .locals 1

    sget-object v0, Lorg/swiftp/ae;->c:Ljava/io/File;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lorg/swiftp/ae;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static getLastError()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/swiftp/ae;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getProxyConnector()Lorg/swiftp/ProxyConnector;
    .locals 1

    sget-object v0, Lorg/swiftp/ae;->d:Lorg/swiftp/ProxyConnector;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/swiftp/ae;->d:Lorg/swiftp/ProxyConnector;

    invoke-virtual {v0}, Lorg/swiftp/ProxyConnector;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/swiftp/ae;->d:Lorg/swiftp/ProxyConnector;

    goto :goto_0
.end method

.method public static getUsername()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/swiftp/ae;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static setChrootDir(Ljava/io/File;)V
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object p0, Lorg/swiftp/ae;->c:Ljava/io/File;

    :cond_0
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lorg/swiftp/ae;->a:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static setLastError(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lorg/swiftp/ae;->b:Ljava/lang/String;

    return-void
.end method

.method public static setProxyConnector(Lorg/swiftp/ProxyConnector;)V
    .locals 0

    sput-object p0, Lorg/swiftp/ae;->d:Lorg/swiftp/ProxyConnector;

    return-void
.end method

.method public static setUsername(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lorg/swiftp/ae;->e:Ljava/lang/String;

    return-void
.end method
