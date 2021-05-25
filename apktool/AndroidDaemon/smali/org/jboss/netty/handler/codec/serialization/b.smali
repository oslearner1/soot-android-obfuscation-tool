.class final Lorg/jboss/netty/handler/codec/serialization/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/handler/codec/serialization/ClassResolver;


# instance fields
.field private final a:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/serialization/b;->a:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public final resolve(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/b;->a:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/serialization/b;->a:Ljava/lang/ClassLoader;

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
