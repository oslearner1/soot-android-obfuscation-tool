.class public final Lorg/jboss/netty/util/internal/DetectionUtil;
.super Ljava/lang/Object;


# static fields
.field private static final HAS_UNSAFE:Z

.field private static final IS_WINDOWS:Z

.field private static final JAVA_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion0()I

    move-result v0

    sput v0, Lorg/jboss/netty/util/internal/DetectionUtil;->JAVA_VERSION:I

    const-class v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/util/internal/DetectionUtil;->hasUnsafe(Ljava/lang/ClassLoader;)Z

    move-result v0

    sput-boolean v0, Lorg/jboss/netty/util/internal/DetectionUtil;->HAS_UNSAFE:Z

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "win"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/util/internal/DetectionUtil;->IS_WINDOWS:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasUnsafe()Z
    .locals 1

    sget-boolean v0, Lorg/jboss/netty/util/internal/DetectionUtil;->HAS_UNSAFE:Z

    return v0
.end method

.method private static hasUnsafe(Ljava/lang/ClassLoader;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "org.jboss.netty.tryUnsafe"

    const-string v2, "true"

    invoke-static {v1, v2}, Lorg/jboss/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v1, "sun.misc.Unsafe"

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/util/internal/DetectionUtil;->hasUnsafeField(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static hasUnsafeField(Ljava/lang/Class;)Z
    .locals 1

    new-instance v0, Lorg/jboss/netty/util/internal/ax;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/ax;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isWindows()Z
    .locals 1

    sget-boolean v0, Lorg/jboss/netty/util/internal/DetectionUtil;->IS_WINDOWS:Z

    return v0
.end method

.method public static javaVersion()I
    .locals 1

    sget v0, Lorg/jboss/netty/util/internal/DetectionUtil;->JAVA_VERSION:I

    return v0
.end method

.method private static javaVersion0()I
    .locals 3

    const/4 v0, 0x6

    :try_start_0
    const-string v1, "android.app.Application"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    :try_start_1
    const-class v1, Ljava/util/zip/Deflater;

    const-string v2, "SYNC_FLUSH"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x7

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    const-class v1, Ljava/lang/Double;

    const-string v2, "MIN_NORMAL"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const/4 v0, 0x5

    goto :goto_0
.end method
