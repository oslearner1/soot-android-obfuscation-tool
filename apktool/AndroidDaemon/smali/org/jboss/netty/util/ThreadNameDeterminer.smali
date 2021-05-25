.class public interface abstract Lorg/jboss/netty/util/ThreadNameDeterminer;
.super Ljava/lang/Object;


# static fields
.field public static final CURRENT:Lorg/jboss/netty/util/ThreadNameDeterminer;

.field public static final PROPOSED:Lorg/jboss/netty/util/ThreadNameDeterminer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/util/f;

    invoke-direct {v0}, Lorg/jboss/netty/util/f;-><init>()V

    sput-object v0, Lorg/jboss/netty/util/ThreadNameDeterminer;->PROPOSED:Lorg/jboss/netty/util/ThreadNameDeterminer;

    new-instance v0, Lorg/jboss/netty/util/g;

    invoke-direct {v0}, Lorg/jboss/netty/util/g;-><init>()V

    sput-object v0, Lorg/jboss/netty/util/ThreadNameDeterminer;->CURRENT:Lorg/jboss/netty/util/ThreadNameDeterminer;

    return-void
.end method


# virtual methods
.method public abstract determineThreadName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
