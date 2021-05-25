.class final enum Lorg/jboss/netty/handler/codec/serialization/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/jboss/netty/handler/codec/serialization/f;

.field public static final enum b:Lorg/jboss/netty/handler/codec/serialization/f;

.field private static final synthetic c:[Lorg/jboss/netty/handler/codec/serialization/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/jboss/netty/handler/codec/serialization/f;

    const-string v1, "READ_HEADER"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/serialization/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/serialization/f;->a:Lorg/jboss/netty/handler/codec/serialization/f;

    new-instance v0, Lorg/jboss/netty/handler/codec/serialization/f;

    const-string v1, "READ_OBJECT"

    invoke-direct {v0, v1, v3}, Lorg/jboss/netty/handler/codec/serialization/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/serialization/f;->b:Lorg/jboss/netty/handler/codec/serialization/f;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/serialization/f;

    sget-object v1, Lorg/jboss/netty/handler/codec/serialization/f;->a:Lorg/jboss/netty/handler/codec/serialization/f;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jboss/netty/handler/codec/serialization/f;->b:Lorg/jboss/netty/handler/codec/serialization/f;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jboss/netty/handler/codec/serialization/f;->c:[Lorg/jboss/netty/handler/codec/serialization/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/serialization/f;
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/serialization/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/serialization/f;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/handler/codec/serialization/f;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/serialization/f;->c:[Lorg/jboss/netty/handler/codec/serialization/f;

    invoke-virtual {v0}, [Lorg/jboss/netty/handler/codec/serialization/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/handler/codec/serialization/f;

    return-object v0
.end method
