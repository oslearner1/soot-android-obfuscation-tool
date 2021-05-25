.class public final Lcom/vivo/PCTools/h/a;
.super Lcom/vivo/PCTools/Pcserver/a;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static A:B

.field private static B:B

.field private static C:B

.field private static D:Z

.field private static final F:Ljava/lang/Object;

.field private static final G:Ljava/lang/Object;

.field private static L:[B

.field public static final d:B

.field public static final e:B

.field public static final f:B

.field public static final g:B

.field public static final h:B

.field public static final i:B

.field private static j:B

.field private static k:B

.field private static l:B

.field private static m:B

.field private static n:B

.field private static o:B

.field private static p:B

.field private static q:B

.field private static r:B

.field private static s:B

.field private static t:B

.field private static u:B

.field private static v:B

.field private static w:B

.field private static x:B

.field private static y:B

.field private static z:B


# instance fields
.field private E:Z

.field private volatile H:Z

.field private I:Ljava/util/concurrent/LinkedBlockingQueue;

.field private J:Ljava/util/ArrayList;

.field private K:Landroid/content/Context;

.field private M:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-byte v2, Lcom/vivo/PCTools/h/a;->j:B

    const/4 v0, 0x1

    int-to-byte v0, v0

    sput-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v2, Lcom/vivo/PCTools/h/a;->k:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->l:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->d:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->e:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->m:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->n:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->o:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->p:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->f:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->q:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->r:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->s:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->t:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->u:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->v:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->w:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->x:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->y:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->z:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->A:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->g:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->h:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->B:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->i:B

    sget-byte v0, Lcom/vivo/PCTools/h/a;->j:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/vivo/PCTools/h/a;->j:B

    sput-byte v0, Lcom/vivo/PCTools/h/a;->C:B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sput-boolean v2, Lcom/vivo/PCTools/h/a;->D:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/PCTools/h/a;->F:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/PCTools/h/a;->G:Ljava/lang/Object;

    const/16 v0, 0xff

    new-array v0, v0, [B

    sput-object v0, Lcom/vivo/PCTools/h/a;->L:[B

    aput-byte v2, v0, v2

    const/16 v0, 0x30

    :goto_0
    const/16 v1, 0x39

    if-le v0, v1, :cond_0

    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x46

    if-le v0, v1, :cond_1

    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x66

    if-le v0, v1, :cond_2

    return-void

    :cond_0
    sget-object v1, Lcom/vivo/PCTools/h/a;->L:[B

    add-int/lit8 v2, v0, -0x30

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/vivo/PCTools/h/a;->L:[B

    add-int/lit8 v2, v0, -0x37

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/vivo/PCTools/h/a;->L:[B

    add-int/lit8 v2, v0, -0x57

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4}, Lcom/vivo/PCTools/Pcserver/a;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/vivo/PCTools/h/a;->E:Z

    iput-boolean v0, p0, Lcom/vivo/PCTools/h/a;->H:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/h/a;->J:Ljava/util/ArrayList;

    new-instance v0, Lcom/vivo/PCTools/h/b;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/h/b;-><init>(Lcom/vivo/PCTools/h/a;)V

    iput-object v0, p0, Lcom/vivo/PCTools/h/a;->M:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/vivo/PCTools/h/a;->I:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object p4, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/util/ArrayList;)Lcom/google/gson/JsonArray;
    .locals 16

    new-instance v5, Lcom/google/gson/JsonArray;

    invoke-direct {v5}, Lcom/google/gson/JsonArray;-><init>()V

    const/4 v3, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/vivo/PCTools/h/e;->getInstance()Lcom/vivo/PCTools/h/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/PCTools/h/e;->isSupported()Z

    move-result v6

    const-string v1, "BackupAndRestoreHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "isSupported = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "br_app_thirdapp"

    const-string v7, "tmp"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-static {v1, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    new-instance v8, Lcom/google/gson/stream/JsonWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v1}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v8}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_2
    invoke-virtual {v8}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v8}, Lcom/google/gson/stream/JsonWriter;->close()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v4, Lcom/vivo/PCTools/h/a;->v:B

    invoke-virtual {v1, v4}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v1, "thirdapp"

    invoke-static {v1, v2, v3}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7}, Lcom/vivo/PCTools/h/a;->SendFileSync(Lcom/vivo/PCTools/q/a/a;Ljava/io/File;)V

    return-object v5

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_0

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz p1, :cond_4

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vivo/PCTools/h/a;->H:Z

    if-nez v4, :cond_2

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p1, :cond_6

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v4}, Lcom/vivo/PCTools/q/a/a;->reset()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v10, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v4, v10}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v11, "thirdapp"

    add-int/lit8 v4, v3, 0x1

    invoke-static {v11, v2, v3}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v10, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ".apk"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v12}, Lcom/vivo/PCTools/q/a/a;->reset()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v13, Lcom/vivo/PCTools/h/a;->w:B

    invoke-virtual {v12, v13}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v13, "thirdapp"

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v13, v11, v14, v15}, Lcom/vivo/PCTools/h/a;->getfilejson(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v12}, Lcom/vivo/PCTools/q/a/a;->reset()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v13, Lcom/vivo/PCTools/h/a;->x:B

    invoke-virtual {v12, v13}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10}, Lcom/vivo/PCTools/h/a;->SendFileSync(Lcom/vivo/PCTools/q/a/a;Ljava/io/File;)V

    invoke-virtual {v8}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v12, "_id"

    invoke-virtual {v8, v12}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v12

    iget-object v13, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v12, "appName"

    invoke-virtual {v8, v12}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v12, "versionName"

    invoke-virtual {v8, v12}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v12

    iget-object v13, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v12, "versionCode"

    invoke-virtual {v8, v12}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v12

    iget v13, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v12, "size"

    invoke-virtual {v8, v12}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v12

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v12, "name"

    invoke-virtual {v8, v12}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v11, "src"

    invoke-virtual {v8, v11}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v11

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    if-eqz v6, :cond_7

    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ".zip"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/vivo/PCTools/h/e;->getInstance()Lcom/vivo/PCTools/h/e;

    move-result-object v11

    iget-object v12, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/vivo/PCTools/h/e;->pack(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    const-string v12, "BackupAndRestoreHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "pack ret = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v11, :cond_7

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v12}, Lcom/vivo/PCTools/q/a/a;->reset()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v13, Lcom/vivo/PCTools/h/a;->w:B

    invoke-virtual {v12, v13}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v13, "thirdapp"

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v13, v11, v14, v15}, Lcom/vivo/PCTools/h/a;->getfilejson(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v12}, Lcom/vivo/PCTools/q/a/a;->reset()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v13, Lcom/vivo/PCTools/h/a;->x:B

    invoke-virtual {v12, v13}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10}, Lcom/vivo/PCTools/h/a;->SendFileSync(Lcom/vivo/PCTools/q/a/a;Ljava/io/File;)V

    const-string v12, "dataname"

    invoke-virtual {v8, v12}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v11, "datasize"

    invoke-virtual {v8, v11}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v11

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v11, "datasrc"

    invoke-virtual {v8, v11}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v11

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_7
    invoke-virtual {v8}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    new-instance v10, Lcom/google/gson/JsonObject;

    invoke-direct {v10}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v11, "id"

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {v10, v1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    move v3, v4

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/vivo/PCTools/h/a;->G:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Z)V
    .locals 0

    sput-boolean p0, Lcom/vivo/PCTools/h/a;->D:Z

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/vivo/PCTools/h/a;->registerBroadCastRecver()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vivo.action.REQUEST_CHECK_PWD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "password_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "password_squence"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v1, Lcom/vivo/PCTools/h/a;->G:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/vivo/PCTools/h/a;->G:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->M:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-boolean v0, Lcom/vivo/PCTools/h/a;->D:Z

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()I
    .locals 9

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-string v0, "br_app"

    const-string v2, "tmp"

    iget-object v3, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v6, Lcom/vivo/vcard/d;

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    const v2, -0x3fffffff    # -2.0000002f

    const/4 v3, 0x1

    invoke-direct {v6, v0, v2, v3}, Lcom/vivo/vcard/d;-><init>(Landroid/content/Context;IZ)V

    iget-boolean v0, p0, Lcom/vivo/PCTools/h/a;->E:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/vivo/PCTools/h/a;->D:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "encrypt"

    const-string v3, ">=0"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-virtual {v6, v0, v7, v7, v7}, Lcom/vivo/vcard/d;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Lcom/vivo/vcard/d;->getCount()I

    move-result v3

    move v0, v1

    :goto_1
    invoke-virtual {v6}, Lcom/vivo/vcard/d;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {v6}, Lcom/vivo/vcard/d;->terminate()V

    move v2, v3

    :goto_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iget-object v3, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v3}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v3, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v5, Lcom/vivo/PCTools/h/a;->e:B

    invoke-virtual {v3, v5}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v3, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v1, "contact"

    invoke-static {v1, v2, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0, v4}, Lcom/vivo/PCTools/h/a;->SendFileSync(Lcom/vivo/PCTools/q/a/a;Ljava/io/File;)V

    return v2

    :cond_1
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v7, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v2, v7}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v7, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v8, "contact"

    add-int/lit8 v2, v0, 0x1

    invoke-static {v8, v3, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/vivo/vcard/d;->createOneEntry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    move v2, v1

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)Z
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v6, ""

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    const-string v1, "com.iqoo.secure"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/a;->getVerCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    :cond_0
    move v0, v7

    :cond_1
    if-ne v0, v7, :cond_6

    const-string v0, "BackupAndRestoreHandler"

    const-string v1, "SupportIqooPrivacy,now query for psw"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string v1, "content://com.iqoo.secure.provider.secureprovider/password"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "isfirstload"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "password"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_5

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "password"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    move-object v0, v6

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v7

    :goto_2
    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v9

    :goto_3
    :try_start_2
    const-string v0, ""

    const-string v3, "BackupAndRestoreHandler"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move v0, v8

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v9, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v9, v2

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_3

    :cond_5
    move-object v0, v6

    goto :goto_0

    :cond_6
    move-object v0, v6

    goto :goto_1
.end method

.method private c()I
    .locals 9

    const/4 v2, 0x0

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/vivo/PCTools/h/a;->E:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/vivo/PCTools/h/a;->D:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "all_type"

    const-string v3, "true"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "date DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->m:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    :goto_1
    return v6

    :cond_0
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "br_app_calllog"

    const-string v1, "tmp"

    iget-object v4, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v0, v1, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Lcom/google/gson/stream/JsonWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v0}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    move v0, v6

    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->close()V

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v3, Lcom/vivo/PCTools/h/a;->m:B

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v1, "calllog"

    invoke-static {v1, v2, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0, v4}, Lcom/vivo/PCTools/h/a;->SendFileSync(Lcom/vivo/PCTools/q/a/a;Ljava/io/File;)V

    move v6, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v7, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v1, v7}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v7, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v8, "calllog"

    add-int/lit8 v1, v0, 0x1

    invoke-static {v8, v2, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "number"

    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v7, "number"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v0, "type"

    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v7, "type"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v0, v7, v8}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v0, "name"

    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v7, "name"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v0, "duration"

    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v7, "duration"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v0, "date"

    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v7, "date"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move v0, v1

    goto/16 :goto_2
.end method

.method private d()I
    .locals 9

    const/4 v2, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    const-string v1, "com.vivo.browser"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/a;->getVerCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    sget-object v1, Lcom/vivo/PCTools/BookMark/p;->b:Landroid/net/Uri;

    :goto_0
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "folder = 0"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->z:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    :goto_1
    return v6

    :cond_0
    sget-object v1, Lcom/vivo/PCTools/BookMark/p;->a:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    const-string v0, "br_app_bookmark"

    const-string v1, "tmp"

    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v5, Lcom/google/gson/stream/JsonWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v0}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    move v0, v6

    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->close()V

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v3, Lcom/vivo/PCTools/h/a;->z:B

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v1, "bookmark"

    invoke-static {v1, v2, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0, v4}, Lcom/vivo/PCTools/h/a;->SendFileSync(Lcom/vivo/PCTools/q/a/a;Ljava/io/File;)V

    move v6, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v7, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v1, v7}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v7, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v8, "bookmark"

    add-int/lit8 v1, v0, 0x1

    invoke-static {v8, v2, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "_id"

    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v7, "_id"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v0, "title"

    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v7, "title"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v0, "url"

    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v7, "url"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move v0, v1

    goto/16 :goto_2
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v0, v3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [B

    const/4 v1, 0x0

    const/4 v0, 0x4

    :goto_0
    array-length v2, v3

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_0
    sget-object v2, Lcom/vivo/PCTools/h/a;->L:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v3, v5

    aget-byte v2, v2, v5

    and-int/lit8 v2, v2, 0xf

    int-to-byte v5, v2

    sget-object v2, Lcom/vivo/PCTools/h/a;->L:[B

    aget-byte v6, v3, v0

    aget-byte v2, v2, v6

    and-int/lit8 v2, v2, 0xf

    int-to-byte v6, v2

    add-int/lit8 v2, v1, 0x1

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v0, v0, 0x2

    move v1, v2

    goto :goto_0
.end method

.method private e()I
    .locals 11

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v10, -0x1

    iget-boolean v0, p0, Lcom/vivo/PCTools/h/a;->E:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/vivo/PCTools/h/a;->D:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vivo/PCTools/r/a;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v3, "true"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "querytype"

    const-string v3, "all"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "type <> 3"

    const-string v5, "date DESC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->n:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v10}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    :goto_1
    return v6

    :cond_0
    sget-object v1, Lcom/vivo/PCTools/r/a;->b:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    const-string v0, "br_app_sms"

    const-string v1, "tmp"

    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v5, Lcom/google/gson/stream/JsonWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v0}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    move v0, v6

    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->close()V

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v3, Lcom/vivo/PCTools/h/a;->n:B

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v1, "sms"

    invoke-static {v1, v2, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0, v4}, Lcom/vivo/PCTools/h/a;->SendFileSync(Lcom/vivo/PCTools/q/a/a;Ljava/io/File;)V

    move v6, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v7, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v1, v7}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v7, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v8, "sms"

    add-int/lit8 v1, v0, 0x1

    invoke-static {v8, v2, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "_id"

    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v7, "_id"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v0, "body"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "address"

    invoke-virtual {v5, v7}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v7

    const-string v8, "address"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v7, "type"

    invoke-virtual {v5, v7}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v7

    const-string v8, "type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v7, "status"

    invoke-virtual {v5, v7}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v7

    const-string v8, "status"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v7, "read"

    invoke-virtual {v5, v7}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v7

    const-string v8, "read"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v7, "error_code"

    invoke-virtual {v5, v7}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v7

    const-string v8, "error_code"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v7, "date"

    invoke-virtual {v5, v7}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v7

    const-string v8, "date"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    sget-object v7, Lcom/vivo/PCTools/util/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "time"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_4

    const-string v7, "time"

    invoke-virtual {v5, v7}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v7

    const-string v8, "time"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    :cond_4
    const-string v7, "sim_id"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_5

    const-string v7, "sim_id"

    invoke-virtual {v5, v7}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v7

    const-string v8, "sim_id"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    :cond_5
    const-string v7, "encrypted"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_6

    const-string v7, "encrypted"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-lez v7, :cond_6

    const-string v7, "ffff"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v0}, Lcom/vivo/PCTools/h/a;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string v7, "is_encrypted"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_7

    const-string v7, "is_encrypted"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-lez v7, :cond_7

    const-string v7, "ffff"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v0}, Lcom/vivo/PCTools/h/a;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    const-string v7, "body"

    invoke-virtual {v5, v7}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move v0, v1

    goto/16 :goto_2
.end method

.method private f()I
    .locals 12

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/vivo/PCTools/h/a;->E:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/vivo/PCTools/h/a;->D:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vivo/PCTools/r/a;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "querytype"

    const-string v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "m_type = 132 OR m_type = 128"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->o:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    :goto_1
    return v6

    :cond_0
    sget-object v1, Lcom/vivo/PCTools/r/a;->c:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "br_app_mms"

    const-string v1, "tmp"

    iget-object v4, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v0, v1, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Lcom/google/gson/stream/JsonWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v0}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    move v0, v6

    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->close()V

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v3, Lcom/vivo/PCTools/h/a;->o:B

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v1, "mms"

    invoke-static {v1, v2, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0, v4}, Lcom/vivo/PCTools/h/a;->SendFileSync(Lcom/vivo/PCTools/q/a/a;Ljava/io/File;)V

    move v6, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v7, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v1, v7}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v7, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v8, "mms"

    add-int/lit8 v1, v0, 0x1

    invoke-static {v8, v2, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    sget-object v0, Lcom/vivo/PCTools/r/j;->a:Landroid/net/Uri;

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v7, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/vivo/PCTools/mms/a;->createSingleMMSPduFile(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_id_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_mms.pdu"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v8, "_id"

    invoke-virtual {v5, v8}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v8

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v8, "name"

    invoke-virtual {v5, v8}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v8, "src"

    invoke-virtual {v5, v8}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v8, "size"

    invoke-virtual {v5, v8}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v8

    array-length v9, v0

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    iget-object v8, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v8}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v8, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v9, Lcom/vivo/PCTools/h/a;->w:B

    invoke-virtual {v8, v9}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v8, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v8, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v8, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v9, "mms"

    array-length v10, v0

    int-to-long v10, v10

    invoke-static {v9, v7, v10, v11}, Lcom/vivo/PCTools/h/a;->getfilejson(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v8, v7}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v7}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v7, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v8, Lcom/vivo/PCTools/h/a;->x:B

    invoke-virtual {v7, v8}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v7, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v7, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v7, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v7, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;[B)V

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move v0, v1

    goto/16 :goto_2
.end method

.method private g()I
    .locals 13

    const/4 v2, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/vivo/PCTools/c/c;->a:Landroid/net/Uri;

    const-string v3, "state != 1 AND state != 2"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->A:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    :goto_0
    return v6

    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "br_app_theme"

    const-string v1, "tmp"

    iget-object v4, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v0, v1, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Lcom/google/gson/stream/JsonWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v0}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    move v0, v6

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->close()V

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v3, Lcom/vivo/PCTools/h/a;->A:B

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v1, "theme"

    invoke-static {v1, v2, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0, v4}, Lcom/vivo/PCTools/h/a;->SendFileSync(Lcom/vivo/PCTools/q/a/a;Ljava/io/File;)V

    move v6, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v7, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v1, v7}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v7, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v8, "theme"

    add-int/lit8 v1, v0, 0x1

    invoke-static {v8, v2, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    const-string v0, "filename"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "_id"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v10}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v11, Lcom/vivo/PCTools/h/a;->w:B

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v10, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "_id_"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v10, "theme"

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-static {v10, v7, v11, v12}, Lcom/vivo/PCTools/h/a;->getfilejson(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v8, v10}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v8}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v8, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v10, Lcom/vivo/PCTools/h/a;->x:B

    invoke-virtual {v8, v10}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v8, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v8, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v8, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v8, v9}, Lcom/vivo/PCTools/h/a;->SendFileSync(Lcom/vivo/PCTools/q/a/a;Ljava/io/File;)V

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v8, "uid"

    invoke-virtual {v5, v8}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v8

    const-string v10, "uid"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v8, "state"

    invoke-virtual {v5, v8}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v8

    const-string v10, "state"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v8, "type"

    invoke-virtual {v5, v8}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v8

    const-string v10, "type"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v8, "size"

    invoke-virtual {v5, v8}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v8

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v8, "src"

    invoke-virtual {v5, v8}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v0, "name"

    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move v0, v1

    goto/16 :goto_1
.end method

.method public static getContactCount(Ljava/io/File;)I
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v3

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_1
    return v0

    :cond_2
    :try_start_4
    const-string v4, "END:VCARD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move v0, v3

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_3
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v0

    move v0, v3

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method public static getExternalRelative(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/storage/sdcard0/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/storage/sdcard0/"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "/storage/sdcard1/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/storage/sdcard1/"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v0, "/mnt/sdcard/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "/mnt/sdcard/"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string v0, "/sdcard/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/sdcard/"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getVcfVersion(Ljava/io/File;)I
    .locals 5

    const v3, -0x3fffffff    # -2.0000002f

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v3

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_1
    return v0

    :cond_2
    :try_start_4
    const-string v4, "VERSION:2.1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/high16 v3, -0x40000000    # -2.0f

    move v0, v3

    goto :goto_0

    :cond_3
    const-string v4, "VERSION:3.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move v0, v3

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_4
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v0

    move v0, v3

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method public static getfilejson(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getprocessjson(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "count"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "index"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getpullfilejson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "src"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "size"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()I
    .locals 15

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    const-string v1, "com.android.notes"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/a;->getVerName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/vivo/PCTools/n/a;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "2.0"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "dirty!=2"

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_1

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->p:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/media/av;->isRom(Landroid/content/Context;)Z

    move-result v10

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "br_app_note"

    const-string v1, "tmp"

    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v11

    new-instance v12, Lcom/google/gson/stream/JsonWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v11}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v0}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v12}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    move v0, v6

    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {v12}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v12}, Lcom/google/gson/stream/JsonWriter;->close()V

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v2, Lcom/vivo/PCTools/h/a;->p:B

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v1, "note"

    invoke-static {v1, v7, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0, v11}, Lcom/vivo/PCTools/h/a;->SendFileSync(Lcom/vivo/PCTools/q/a/a;Ljava/io/File;)V

    move v0, v7

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v2, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v2, "note"

    add-int/lit8 v6, v0, 0x1

    invoke-static {v2, v7, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "_id"

    invoke-virtual {v12, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v0, "content"

    invoke-virtual {v12, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v1, "content"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v0, "color"

    invoke-virtual {v12, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v1, "color"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    if-eqz v10, :cond_8

    const-string v0, "date"

    invoke-virtual {v12, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v1, "date"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v0, "alarmtime"

    invoke-virtual {v12, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v1, "alarmtime"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v0, "state"

    invoke-virtual {v12, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v1, "state"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v0, "has_passwd"

    invoke-virtual {v12, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v1, "has_passwd"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v0, "has_photo"

    invoke-virtual {v12, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v1, "has_photo"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v0, "has_contact"

    invoke-virtual {v12, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v1, "has_contact"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v0, "has_alarm"

    invoke-virtual {v12, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v1, "has_alarm"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v0, "curtimemillis"

    invoke-virtual {v12, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v1, "curtimemillis"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v0, "2.0"

    invoke-static {v8, v0}, Landroid/support/v4/view/a/u;->compareWithVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    const-string v0, "createtime"

    invoke-virtual {v12, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v1, "createtime"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v0, "dirty"

    invoke-virtual {v12, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v1, "dirty"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    :cond_4
    const-string v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/vivo/PCTools/n/b;->a:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "picture"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "noteid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "pictures"

    invoke-virtual {v12, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v12}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v12}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    :cond_5
    :goto_4
    invoke-virtual {v12}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move v0, v6

    goto/16 :goto_2

    :cond_6
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, ".vivoNotes"

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v3}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v3, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v4, Lcom/vivo/PCTools/h/a;->w:B

    invoke-virtual {v3, v4}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v3, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v3, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v4, "note"

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-static {v4, v1, v13, v14}, Lcom/vivo/PCTools/h/a;->getfilejson(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v3}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v3, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v4, Lcom/vivo/PCTools/h/a;->x:B

    invoke-virtual {v3, v4}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v3, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v3, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v3, v2}, Lcom/vivo/PCTools/h/a;->SendFileSync(Lcom/vivo/PCTools/q/a/a;Ljava/io/File;)V

    invoke-virtual {v12}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v3, "_id"

    invoke-virtual {v12, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v3, "name"

    invoke-virtual {v12, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v1, "size"

    invoke-virtual {v12, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v1, "src"

    invoke-virtual {v12, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v12}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_3

    :cond_8
    const-string v0, "curtimemillis"

    invoke-virtual {v12, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v1, "curtimemilles"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v0, "date"

    invoke-virtual {v12, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    const-string v1, "date"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_4
.end method

.method private i()I
    .locals 10

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v0, "br_app"

    const-string v1, "ics"

    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    new-instance v8, Lcom/vivo/vcalendar/i;

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/vivo/vcalendar/i;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    new-instance v9, Ljava/io/BufferedWriter;

    invoke-direct {v9, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v8}, Lcom/vivo/vcalendar/i;->getVCalHead()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->f:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V

    :goto_0
    return v6

    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move v0, v6

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {v8}, Lcom/vivo/vcalendar/i;->getVCalEnd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v3, Lcom/vivo/PCTools/h/a;->f:B

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v1, "calendar"

    invoke-static {v1, v2, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0, v7}, Lcom/vivo/PCTools/h/a;->SendFileSync(Lcom/vivo/PCTools/q/a/a;Ljava/io/File;)V

    move v6, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v4, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v1, v4}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v4, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v5, "calendar"

    add-int/lit8 v1, v0, 0x1

    invoke-static {v5, v2, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/vivo/vcalendar/i;->buildVEventString(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v9, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move v0, v1

    goto :goto_1
.end method

.method private j()I
    .locals 14

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "_size"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->q:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "br_app_image"

    const-string v1, "tmp"

    iget-object v4, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v0, v1, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Lcom/google/gson/stream/JsonWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v0}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    move v0, v6

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->close()V

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v3, Lcom/vivo/PCTools/h/a;->q:B

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v1, "image"

    invoke-static {v1, v2, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0, v4}, Lcom/vivo/PCTools/h/a;->SendFileSync(Lcom/vivo/PCTools/q/a/a;Ljava/io/File;)V

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v6, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v7, "image"

    add-int/lit8 v1, v0, 0x1

    invoke-static {v7, v2, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_id_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v10}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v11, Lcom/vivo/PCTools/h/a;->w:B

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v11, "image"

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v11, v9, v12, v13}, Lcom/vivo/PCTools/h/a;->getfilejson(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v10}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v11, Lcom/vivo/PCTools/h/a;->x:B

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v10, v8}, Lcom/vivo/PCTools/h/a;->SendFileSync(Lcom/vivo/PCTools/q/a/a;Ljava/io/File;)V

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v10, "_id"

    invoke-virtual {v5, v10}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v6, "size"

    invoke-virtual {v5, v6}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v6

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v6, "src"

    invoke-virtual {v5, v6}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move v0, v1

    goto/16 :goto_1
.end method

.method private k()I
    .locals 14

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v3

    const-string v3, "is_music=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->r:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "br_app_music"

    const-string v1, "tmp"

    iget-object v4, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v0, v1, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Lcom/google/gson/stream/JsonWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v0}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    move v0, v6

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->close()V

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v3, Lcom/vivo/PCTools/h/a;->r:B

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v1, "music"

    invoke-static {v1, v2, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0, v4}, Lcom/vivo/PCTools/h/a;->SendFileSync(Lcom/vivo/PCTools/q/a/a;Ljava/io/File;)V

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v6, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v7, "music"

    add-int/lit8 v1, v0, 0x1

    invoke-static {v7, v2, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_id_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v10}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v11, Lcom/vivo/PCTools/h/a;->w:B

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v11, "music"

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v11, v9, v12, v13}, Lcom/vivo/PCTools/h/a;->getfilejson(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v10}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v11, Lcom/vivo/PCTools/h/a;->x:B

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v10, v8}, Lcom/vivo/PCTools/h/a;->SendFileSync(Lcom/vivo/PCTools/q/a/a;Ljava/io/File;)V

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v10, "_id"

    invoke-virtual {v5, v10}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v6, "size"

    invoke-virtual {v5, v6}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v6

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v6, "src"

    invoke-virtual {v5, v6}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move v0, v1

    goto/16 :goto_1
.end method

.method private l()I
    .locals 14

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->s:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "br_app_video"

    const-string v1, "tmp"

    iget-object v4, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v0, v1, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Lcom/google/gson/stream/JsonWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v0}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    move v0, v6

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->close()V

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v3, Lcom/vivo/PCTools/h/a;->s:B

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v1, "video"

    invoke-static {v1, v2, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0, v4}, Lcom/vivo/PCTools/h/a;->SendFileSync(Lcom/vivo/PCTools/q/a/a;Ljava/io/File;)V

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v6, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v7, "video"

    add-int/lit8 v1, v0, 0x1

    invoke-static {v7, v2, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_id_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v10}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v11, Lcom/vivo/PCTools/h/a;->w:B

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v11, "video"

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v11, v9, v12, v13}, Lcom/vivo/PCTools/h/a;->getfilejson(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v10}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v11, Lcom/vivo/PCTools/h/a;->x:B

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v10, v8}, Lcom/vivo/PCTools/h/a;->SendFileSync(Lcom/vivo/PCTools/q/a/a;Ljava/io/File;)V

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v10, "_id"

    invoke-virtual {v5, v10}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v6, "size"

    invoke-virtual {v5, v6}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v6

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v6, "src"

    invoke-virtual {v5, v6}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move v0, v1

    goto/16 :goto_1
.end method

.method private m()I
    .locals 14

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://media/external/file"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v3

    invoke-static {}, Lcom/vivo/PCTools/h/g;->buildDocSelection()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->t:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "br_app_doc"

    const-string v1, "tmp"

    iget-object v4, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v0, v1, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Lcom/google/gson/stream/JsonWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v0}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    move v0, v6

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->close()V

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v3, Lcom/vivo/PCTools/h/a;->t:B

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v1, "document"

    invoke-static {v1, v2, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0, v4}, Lcom/vivo/PCTools/h/a;->SendFileSync(Lcom/vivo/PCTools/q/a/a;Ljava/io/File;)V

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v6, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v7, "document"

    add-int/lit8 v1, v0, 0x1

    invoke-static {v7, v2, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_id_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v10}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v11, Lcom/vivo/PCTools/h/a;->w:B

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v11, "document"

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v11, v9, v12, v13}, Lcom/vivo/PCTools/h/a;->getfilejson(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v10}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v11, Lcom/vivo/PCTools/h/a;->x:B

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v10, v8}, Lcom/vivo/PCTools/h/a;->SendFileSync(Lcom/vivo/PCTools/q/a/a;Ljava/io/File;)V

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v10, "_id"

    invoke-virtual {v5, v10}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v6, "size"

    invoke-virtual {v5, v6}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v6

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v6, "src"

    invoke-virtual {v5, v6}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move v0, v1

    goto/16 :goto_1
.end method

.method private n()V
    .locals 10

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    move v0, v1

    :goto_0
    if-lt v0, v5, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_log"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v3, Lcom/vivo/PCTools/h/a;->m:B

    invoke-virtual {v2, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v1, "calllog"

    invoke-static {v1, v5, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void

    :cond_1
    iget-boolean v6, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v6}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v7, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v6, v7}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v7, "calllog"

    invoke-static {v7, v5, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    const-string v7, "number"

    const-string v8, "number"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "date"

    const-string v8, "date"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "duration"

    const-string v8, "duration"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "type"

    const-string v8, "type"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v6, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x64

    if-le v6, v7, :cond_2

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "call_log"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public static needtobackup(Ljava/util/ArrayList;B)Z
    .locals 3

    const/4 v1, 0x1

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private o()V
    .locals 10

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    move v0, v1

    :goto_0
    if-lt v0, v5, :cond_2

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.iqoo.secure.provider.blacklistprovider"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    :cond_1
    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v3, Lcom/vivo/PCTools/h/a;->C:B

    invoke-virtual {v2, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v1, "blacklist"

    invoke-static {v1, v5, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void

    :cond_2
    iget-boolean v6, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v6}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v7, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v6, v7}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v7, "blacklist"

    invoke-static {v7, v5, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    const-string v7, "name"

    const-string v8, "black_name"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "type"

    const-string v8, "black_type"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "number"

    const-string v8, "black_number"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "reject_type"

    const-string v8, "reject_type"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "datetime"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_3

    const-string v8, "datetime"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    sget-object v6, Lcom/vivo/PCTools/p/a;->a:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x64

    if-le v6, v7, :cond_4

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "com.iqoo.secure.provider.blacklistprovider"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private p()V
    .locals 9

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    const-string v3, "com.vivo.browser"

    invoke-static {v0, v3}, Lcom/vivo/PCTools/util/a;->getVerCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/vivo/PCTools/BookMark/p;->b:Landroid/net/Uri;

    :goto_0
    new-instance v3, Lcom/google/gson/stream/JsonReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    move v1, v2

    :goto_1
    if-lt v1, v5, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v3, Lcom/vivo/PCTools/h/a;->z:B

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v0, "bookmark"

    invoke-static {v0, v5, v1}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void

    :cond_1
    sget-object v0, Lcom/vivo/PCTools/BookMark/p;->a:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    iget-boolean v6, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v6}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v7, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v6, v7}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v6, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v7, "bookmark"

    invoke-static {v7, v5, v1}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    const-string v7, "url"

    const-string v8, "url"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "title"

    const-string v8, "title"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static passwdchecksuccess(Z)V
    .locals 2

    sget-object v1, Lcom/vivo/PCTools/h/a;->F:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-boolean p0, Lcom/vivo/PCTools/h/a;->D:Z

    sget-object v0, Lcom/vivo/PCTools/h/a;->F:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private q()V
    .locals 19

    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v3}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    const-string v4, "com.android.notes"

    invoke-static {v2, v4}, Lcom/vivo/PCTools/util/a;->getVerName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/media/av;->isRom(Landroid/content/Context;)Z

    move-result v11

    new-instance v2, Lcom/google/gson/stream/JsonReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Lcom/google/gson/JsonParser;

    invoke-direct {v3}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v12

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12}, Lcom/google/gson/JsonArray;->size()I

    move-result v15

    const/4 v2, 0x0

    move v9, v2

    :goto_0
    if-lt v9, v15, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.provider.notes"

    invoke-virtual {v2, v3, v14}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v3, Lcom/vivo/PCTools/h/a;->p:B

    invoke-virtual {v2, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v2, "note"

    invoke-static {v2, v15, v9}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void

    :cond_1
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/PCTools/h/a;->H:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v3, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v2, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v3, "note"

    invoke-static {v3, v15, v9}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    invoke-virtual {v12, v9}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v16

    const-string v2, "content"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v17

    const-string v2, "curtimemillis"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v11, :cond_c

    const-string v3, "curtimemillis"

    move-object v5, v3

    :goto_1
    sget-object v3, Lcom/vivo/PCTools/n/a;->a:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "content"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    aput-object v5, v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "content=? AND "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v17, v6, v7

    const/4 v7, 0x1

    aput-object v18, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    if-eqz v11, :cond_e

    const-string v3, "alarmtime"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "date"

    const-string v4, "date"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "curtimemillis"

    const-string v4, "curtimemillis"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_3
    const-string v3, "content"

    const-string v4, "content"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "color"

    const-string v4, "color"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "alarmtime"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v11, :cond_2

    const-string v3, "alarmtime"

    const-string v4, "alarmtime"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    const-string v3, "state"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v11, :cond_3

    const-string v3, "state"

    const-string v4, "state"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    const-string v3, "has_passwd"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v11, :cond_4

    const-string v3, "has_passwd"

    const-string v4, "has_passwd"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    const-string v3, "has_photo"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v11, :cond_5

    const-string v3, "has_photo"

    const-string v4, "has_photo"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    const-string v3, "has_contact"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v11, :cond_6

    const-string v3, "has_contact"

    const-string v4, "has_contact"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    const-string v3, "has_alarm"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v11, :cond_7

    const-string v3, "has_alarm"

    const-string v4, "has_alarm"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    const-string v3, "2.0"

    invoke-static {v10, v3}, Landroid/support/v4/view/a/u;->compareWithVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_8

    const-string v3, "createtime"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "createtime"

    const-string v4, "createtime"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_8
    :goto_4
    const-string v3, "2.0"

    invoke-static {v10, v3}, Landroid/support/v4/view/a/u;->compareWithVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_9

    const-string v3, "dirty"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "dirty"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    :goto_5
    if-eqz v2, :cond_12

    sget-object v2, Lcom/vivo/PCTools/n/a;->a:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "content=? AND curtimemillis=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    const/4 v5, 0x1

    aput-object v18, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    if-eqz v11, :cond_a

    const-string v2, "pictures"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    const-string v2, "pictures"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v5

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    invoke-virtual {v5}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-lt v3, v2, :cond_13

    :cond_a
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x78

    if-le v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.provider.notes"

    invoke-virtual {v2, v3, v14}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    :cond_b
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_0

    :cond_c
    const-string v3, "curtimemilles"

    move-object v5, v3

    goto/16 :goto_1

    :cond_d
    const-string v3, "date"

    const-string v4, "curtimemillis"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "curtimemillis"

    const-string v4, "date"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_3

    :cond_e
    const-string v3, "alarmtime"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "date"

    const-string v4, "curtimemillis"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "curtimemilles"

    const-string v4, "date"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_f
    const-string v3, "date"

    const-string v4, "date"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "curtimemilles"

    const-string v4, "curtimemillis"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_10
    const-string v3, "createtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_4

    :cond_11
    if-eqz v2, :cond_9

    const-string v3, "dirty"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_5

    :cond_12
    sget-object v2, Lcom/vivo/PCTools/n/a;->a:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_13
    invoke-virtual {v5, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v6, "name"

    invoke-virtual {v2, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "src"

    invoke-virtual {v2, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "size"

    invoke-virtual {v2, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v8, Lcom/vivo/PCTools/h/a;->h:B

    invoke-virtual {v2, v8}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v8, "note"

    move-wide/from16 v0, v16

    invoke-static {v8, v7, v6, v0, v1}, Lcom/vivo/PCTools/h/a;->getpullfilejson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->I:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/PCTools/q/a/a;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v2

    sget-byte v7, Lcom/vivo/PCTools/h/a;->h:B

    if-ne v2, v7, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    const-string v2, "picture"

    invoke-virtual {v13, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/vivo/PCTools/n/b;->a:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v6, "noteid"

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_7

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8

    :cond_14
    move v2, v8

    goto/16 :goto_2
.end method

.method private r()V
    .locals 10

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    move v0, v1

    :goto_0
    if-lt v0, v5, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sms"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v3, Lcom/vivo/PCTools/h/a;->n:B

    invoke-virtual {v2, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v1, "sms"

    invoke-static {v1, v5, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void

    :cond_1
    iget-boolean v6, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v6}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v7, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v6, v7}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v7, "sms"

    invoke-static {v7, v5, v0}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    const-string v7, "address"

    const-string v8, "address"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "body"

    const-string v8, "body"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "date"

    const-string v8, "date"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "read"

    const-string v8, "read"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "type"

    const-string v8, "type"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "error_code"

    const-string v8, "error_code"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "status"

    const-string v8, "status"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "sim_id"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "sim_id"

    const-string v8, "sim_id"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    sget-object v7, Lcom/vivo/PCTools/util/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "time"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "time"

    const-string v8, "time"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    sget-object v6, Lcom/vivo/PCTools/r/a;->b:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "batch_insert"

    const-string v8, "yes"

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x64

    if-le v6, v7, :cond_4

    iget-object v6, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sms"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private s()V
    .locals 13

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    move v1, v2

    :goto_0
    if-lt v1, v6, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "com.android.theme.db.info"

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v3, Lcom/vivo/PCTools/h/a;->A:B

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v0, "theme"

    invoke-static {v0, v6, v1}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v7, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v0, v7}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v7, "theme"

    invoke-static {v7, v6, v1}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v0, v7}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    invoke-virtual {v3, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v7, "uid"

    const-string v8, "uid"

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "state"

    const-string v8, "state"

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "type"

    const-string v8, "type"

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "name"

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "src"

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "size"

    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v9

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v12, Lcom/vivo/PCTools/h/a;->h:B

    invoke-virtual {v0, v12}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v12, "theme"

    invoke-static {v12, v8, v7, v9, v10}, Lcom/vivo/PCTools/h/a;->getpullfilejson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v0, v7}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->I:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/q/a/a;

    iput-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v7, Lcom/vivo/PCTools/h/a;->h:B

    if-ne v0, v7, :cond_2

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v0

    if-nez v0, :cond_2

    if-nez v11, :cond_2

    sget-object v0, Lcom/vivo/PCTools/c/c;->a:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0
.end method

.method private t()V
    .locals 10

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v3, Lcom/vivo/PCTools/h/a;->o:B

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v0, "mms"

    invoke-static {v0, v4, v1}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    :goto_1
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-nez v0, :cond_0

    invoke-virtual {v3, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v5, "name"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "src"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "size"

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v7

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v9, Lcom/vivo/PCTools/h/a;->h:B

    invoke-virtual {v0, v9}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v9, "mms"

    invoke-static {v9, v6, v5, v7, v8}, Lcom/vivo/PCTools/h/a;->getpullfilejson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->I:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/q/a/a;

    iput-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v5, Lcom/vivo/PCTools/h/a;->h:B

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v5}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [B

    invoke-virtual {v0, v5}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    new-instance v0, Lcom/google_mms/android/mms/pdu/PduParser;

    invoke-direct {v0, v5}, Lcom/google_mms/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->parse()Lcom/google_mms/android/mms/pdu/GenericPdu;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "BackupAndRestoreHandler"

    const-string v1, "PduParser Invalid pduData"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->o:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_1

    :cond_2
    iget-object v5, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-static {v5}, Lcom/google_mms/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google_mms/android/mms/pdu/PduPersister;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v6

    const/16 v7, 0x84

    if-ne v6, v7, :cond_3

    sget-object v6, Lcom/vivo/PCTools/r/k;->a:Landroid/net/Uri;

    invoke-virtual {v5, v0, v6}, Lcom/google_mms/android/mms/pdu/PduPersister;->persist(Lcom/google_mms/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    :goto_2
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v5, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v0, v5}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v5, "mms"

    invoke-static {v5, v4, v1}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_3
    sget-object v6, Lcom/vivo/PCTools/r/l;->a:Landroid/net/Uri;

    invoke-virtual {v5, v0, v6}, Lcom/google_mms/android/mms/pdu/PduPersister;->persist(Lcom/google_mms/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_2
.end method

.method private u()V
    .locals 10

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v3, Lcom/vivo/PCTools/h/a;->q:B

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v0, "image"

    invoke-static {v0, v4, v1}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v5, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v0, v5}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v5, "image"

    invoke-static {v5, v4, v1}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v5, "name"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "src"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "size"

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v7

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v9, Lcom/vivo/PCTools/h/a;->h:B

    invoke-virtual {v0, v9}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v9, "image"

    invoke-static {v9, v6, v5, v7, v8}, Lcom/vivo/PCTools/h/a;->getpullfilejson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->I:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/q/a/a;

    iput-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v5, Lcom/vivo/PCTools/h/a;->h:B

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v5}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v5

    const-string v6, "UTF8"

    invoke-direct {v0, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private v()V
    .locals 10

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v3, Lcom/vivo/PCTools/h/a;->r:B

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v0, "music"

    invoke-static {v0, v4, v1}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v5, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v0, v5}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v5, "music"

    invoke-static {v5, v4, v1}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v5, "name"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "src"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "size"

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v7

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v9, Lcom/vivo/PCTools/h/a;->h:B

    invoke-virtual {v0, v9}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v9, "music"

    invoke-static {v9, v6, v5, v7, v8}, Lcom/vivo/PCTools/h/a;->getpullfilejson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->I:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/q/a/a;

    iput-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v5, Lcom/vivo/PCTools/h/a;->h:B

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v5}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v5

    const-string v6, "UTF8"

    invoke-direct {v0, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private w()V
    .locals 10

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v3, Lcom/vivo/PCTools/h/a;->s:B

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v0, "video"

    invoke-static {v0, v4, v1}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v5, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v0, v5}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v5, "video"

    invoke-static {v5, v4, v1}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v5, "name"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "src"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "size"

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v7

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v9, Lcom/vivo/PCTools/h/a;->h:B

    invoke-virtual {v0, v9}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v9, "video"

    invoke-static {v9, v6, v5, v7, v8}, Lcom/vivo/PCTools/h/a;->getpullfilejson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->I:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/q/a/a;

    iput-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v5, Lcom/vivo/PCTools/h/a;->h:B

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v5}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v5

    const-string v6, "UTF8"

    invoke-direct {v0, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private x()V
    .locals 10

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v3, Lcom/vivo/PCTools/h/a;->t:B

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v0, "document"

    invoke-static {v0, v4, v1}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v5, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v0, v5}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v5, "document"

    invoke-static {v5, v4, v1}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v5, "name"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "src"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "size"

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v7

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v9, Lcom/vivo/PCTools/h/a;->h:B

    invoke-virtual {v0, v9}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v9, "document"

    invoke-static {v9, v6, v5, v7, v8}, Lcom/vivo/PCTools/h/a;->getpullfilejson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->I:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/q/a/a;

    iput-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v5, Lcom/vivo/PCTools/h/a;->h:B

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v5}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v5

    const-string v6, "UTF8"

    invoke-direct {v0, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private y()V
    .locals 11

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    move v2, v3

    :goto_0
    if-lt v2, v5, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->u:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v0, "system"

    invoke-static {v0, v5, v2}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v1, "system"

    invoke-static {v1, v5, v2}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v1, "src"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    const-string v1, "size"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v8

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v10, Lcom/vivo/PCTools/h/a;->h:B

    invoke-virtual {v0, v10}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v10, "system"

    invoke-static {v10, v7, v6, v8, v9}, Lcom/vivo/PCTools/h/a;->getpullfilejson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->I:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/q/a/a;

    iput-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v6, Lcom/vivo/PCTools/h/a;->h:B

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/vivo/PCTools/h/e;->getInstance()Lcom/vivo/PCTools/h/e;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "/data/data/"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/vivo/PCTools/h/e;->unpack(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    const-string v0, "BackupAndRestoreHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "unpack "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "failed!"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_3
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method private z()V
    .locals 17

    invoke-static {}, Lcom/vivo/PCTools/h/e;->getInstance()Lcom/vivo/PCTools/h/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/PCTools/h/e;->testRestoreData()Z

    move-result v7

    new-instance v1, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/stream/JsonReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->size()I

    move-result v9

    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-lt v6, v9, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v2, Lcom/vivo/PCTools/h/a;->v:B

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v1, "thirdapp"

    invoke-static {v1, v9, v6}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vivo/PCTools/h/a;->H:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v2, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v2, "thirdapp"

    invoke-static {v2, v9, v6}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    const-string v1, "id"

    invoke-virtual {v10, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "id"

    invoke-virtual {v10, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_1
    const-string v1, "name"

    invoke-virtual {v10, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    const-string v1, "src"

    invoke-virtual {v10, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    const-string v1, "size"

    invoke-virtual {v10, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v13

    const-string v4, ""

    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    :goto_2
    :try_start_1
    const-string v15, "versionName"

    invoke-virtual {v10, v15}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "versionCode"

    invoke-virtual {v10, v15}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v1, "versionName"

    invoke-virtual {v10, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "versionCode"

    invoke-virtual {v10, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    :cond_2
    if-eqz v5, :cond_3

    iget v15, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v1, v15, :cond_3

    iget-object v1, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v4, Lcom/vivo/PCTools/h/a;->B:B

    invoke-virtual {v1, v4}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v4, "thirdapp"

    invoke-static {v4, v12, v11, v13, v14}, Lcom/vivo/PCTools/h/a;->getpullfilejson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/h/a;->I:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/PCTools/q/a/a;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    sget-byte v4, Lcom/vivo/PCTools/h/a;->B:B

    if-ne v1, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    :goto_3
    invoke-static {}, Lcom/vivo/PCTools/h/e;->getInstance()Lcom/vivo/PCTools/h/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/PCTools/h/e;->isSupported()Z

    move-result v3

    const-string v4, "BackupAndRestoreHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "appsuccess:"

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " isSupport:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " isTestSucceed:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    if-eqz v7, :cond_4

    const-string v1, "dataname"

    invoke-virtual {v10, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "datasrc"

    invoke-virtual {v10, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "datasize"

    invoke-virtual {v10, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "dataname"

    invoke-virtual {v10, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "datasrc"

    invoke-virtual {v10, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "datasize"

    invoke-virtual {v10, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v10}, Lcom/vivo/PCTools/q/a/a;->reset()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v11, Lcom/vivo/PCTools/h/a;->h:B

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v11, "thirdapp"

    invoke-static {v11, v3, v1, v4, v5}, Lcom/vivo/PCTools/h/a;->getpullfilejson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v1}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/h/a;->I:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/PCTools/q/a/a;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    sget-byte v4, Lcom/vivo/PCTools/h/a;->h:B

    if-ne v1, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/vivo/PCTools/h/e;->getInstance()Lcom/vivo/PCTools/h/e;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/data/data/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/vivo/PCTools/h/e;->unpack(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_4

    const-string v1, "BackupAndRestoreHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unpack:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_0

    :cond_5
    const-string v1, "_id"

    invoke-virtual {v10, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    :cond_6
    move v1, v3

    goto/16 :goto_3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v15

    goto/16 :goto_2
.end method


# virtual methods
.method public final Cancel()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/PCTools/h/a;->H:Z

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->I:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->g:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->I:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public final HandleMessage()V
    .locals 0

    return-void
.end method

.method public final confirmPasswd(Lcom/vivo/PCTools/q/a/a;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/vivo/PCTools/h/a;->a(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/vivo/PCTools/h/a;->passwdchecksuccess(Z)V

    move v0, v2

    :goto_2
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    sget-byte v1, Lcom/vivo/PCTools/h/a;->i:B

    invoke-virtual {p1, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {p0, p1}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    :goto_3
    invoke-direct {p0, v1}, Lcom/vivo/PCTools/h/a;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    :cond_1
    invoke-static {v3}, Lcom/vivo/PCTools/h/a;->passwdchecksuccess(Z)V

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2
.end method

.method public final onCreateXmlFile(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 0

    return-void
.end method

.method public final registerBroadCastRecver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.vivo.action.CHECK_PWD_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->M:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final run()V
    .locals 15

    const/16 v14, 0x65

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v13, -0x1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/vivo/PCTools/h/a;->H:Z

    if-eqz v0, :cond_3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/vivo/PCTools/BaseApplication;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "backup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    return-void

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->I:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/q/a/a;

    iput-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v1, Lcom/vivo/PCTools/h/a;->g:B

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v1, Lcom/vivo/PCTools/h/a;->k:B

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/PCTools/h/g;->phoneinfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v1, Lcom/vivo/PCTools/h/a;->l:B

    if-ne v0, v1, :cond_28

    sput-boolean v6, Lcom/vivo/PCTools/h/a;->D:Z

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    const-string v1, "com.iqoo.secure"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/a;->getVerCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_6

    const/16 v1, 0x11

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "encrypt"

    const-string v4, ">0"

    invoke-virtual {v1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    iput-boolean v7, p0, Lcom/vivo/PCTools/h/a;->E:Z

    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v0, "phone"

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/PCTools/h/g;->deviceinfo(Landroid/content/Context;)Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    new-instance v5, Lcom/google/gson/JsonArray;

    invoke-direct {v5}, Lcom/google/gson/JsonArray;-><init>()V

    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    :try_start_1
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v0

    if-lez v0, :cond_39

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v9

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->close()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v6

    :goto_2
    invoke-virtual {v9}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-lt v2, v1, :cond_16

    move-object v1, v0

    :goto_3
    sget-byte v0, Lcom/vivo/PCTools/h/a;->e:B

    invoke-static {v1, v0}, Lcom/vivo/PCTools/h/a;->needtobackup(Ljava/util/ArrayList;B)Z

    move-result v0

    if-nez v0, :cond_7

    sget-byte v0, Lcom/vivo/PCTools/h/a;->m:B

    invoke-static {v1, v0}, Lcom/vivo/PCTools/h/a;->needtobackup(Ljava/util/ArrayList;B)Z

    move-result v0

    if-nez v0, :cond_7

    sget-byte v0, Lcom/vivo/PCTools/h/a;->n:B

    invoke-static {v1, v0}, Lcom/vivo/PCTools/h/a;->needtobackup(Ljava/util/ArrayList;B)Z

    move-result v0

    if-nez v0, :cond_7

    sget-byte v0, Lcom/vivo/PCTools/h/a;->o:B

    invoke-static {v1, v0}, Lcom/vivo/PCTools/h/a;->needtobackup(Ljava/util/ArrayList;B)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-boolean v0, p0, Lcom/vivo/PCTools/h/a;->E:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    const-string v2, "com.iqoo.secure"

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/a;->getVerCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v9, Lcom/vivo/PCTools/h/a;->y:B

    invoke-virtual {v0, v9}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    if-lt v2, v14, :cond_25

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    :goto_4
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPCSync(Lcom/vivo/PCTools/q/a/a;)V

    sget-object v9, Lcom/vivo/PCTools/h/a;->F:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    sget-object v0, Lcom/vivo/PCTools/h/a;->F:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ge v2, v14, :cond_8

    :try_start_4
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v2, Lcom/vivo/PCTools/h/a;->y:B

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-boolean v0, Lcom/vivo/PCTools/h/a;->D:Z

    if-eqz v0, :cond_26

    move v0, v7

    :goto_6
    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPCSync(Lcom/vivo/PCTools/q/a/a;)V

    :cond_8
    sget-byte v0, Lcom/vivo/PCTools/h/a;->e:B

    invoke-static {v1, v0}, Lcom/vivo/PCTools/h/a;->needtobackup(Ljava/util/ArrayList;B)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "id"

    const-string v9, "contact"

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "count"

    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->b()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "name"

    iget-object v9, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    const v10, 0x7f0b0121

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_9
    sget-byte v0, Lcom/vivo/PCTools/h/a;->m:B

    invoke-static {v1, v0}, Lcom/vivo/PCTools/h/a;->needtobackup(Ljava/util/ArrayList;B)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "id"

    const-string v9, "calllog"

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "count"

    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->c()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "name"

    iget-object v9, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    const v10, 0x7f0b0123

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_a
    sget-byte v0, Lcom/vivo/PCTools/h/a;->n:B

    invoke-static {v1, v0}, Lcom/vivo/PCTools/h/a;->needtobackup(Ljava/util/ArrayList;B)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "id"

    const-string v9, "sms"

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "count"

    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->e()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "name"

    iget-object v9, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    const v10, 0x7f0b0124

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_b
    sget-object v0, Lcom/vivo/PCTools/util/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-byte v0, Lcom/vivo/PCTools/h/a;->o:B

    invoke-static {v1, v0}, Lcom/vivo/PCTools/h/a;->needtobackup(Ljava/util/ArrayList;B)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "id"

    const-string v9, "mms"

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "count"

    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->f()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "name"

    iget-object v9, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    const v10, 0x7f0b0125

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_c
    sget-byte v0, Lcom/vivo/PCTools/h/a;->f:B

    invoke-static {v1, v0}, Lcom/vivo/PCTools/h/a;->needtobackup(Ljava/util/ArrayList;B)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "id"

    const-string v9, "calendar"

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "count"

    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->i()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "name"

    iget-object v9, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    const v10, 0x7f0b0122

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_d
    sget-byte v0, Lcom/vivo/PCTools/h/a;->z:B

    invoke-static {v1, v0}, Lcom/vivo/PCTools/h/a;->needtobackup(Ljava/util/ArrayList;B)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "id"

    const-string v9, "bookmark"

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "count"

    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->d()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "name"

    iget-object v9, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    const v10, 0x7f0b0127

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_e
    sget-object v0, Lcom/vivo/PCTools/util/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-byte v0, Lcom/vivo/PCTools/h/a;->p:B

    invoke-static {v1, v0}, Lcom/vivo/PCTools/h/a;->needtobackup(Ljava/util/ArrayList;B)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "id"

    const-string v9, "note"

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "count"

    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->h()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "versionCode"

    iget-object v9, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    const-string v10, "com.android.notes"

    invoke-static {v9, v10}, Lcom/vivo/PCTools/util/a;->getVerCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "versionName"

    iget-object v9, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    const-string v10, "com.android.notes"

    invoke-static {v9, v10}, Lcom/vivo/PCTools/util/a;->getVerName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    iget-object v9, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    const v10, 0x7f0b0126

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_f
    sget-object v0, Lcom/vivo/PCTools/util/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-byte v0, Lcom/vivo/PCTools/h/a;->A:B

    invoke-static {v1, v0}, Lcom/vivo/PCTools/h/a;->needtobackup(Ljava/util/ArrayList;B)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "id"

    const-string v9, "theme"

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "count"

    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->g()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "name"

    iget-object v9, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    const v10, 0x7f0b012f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_10
    sget-byte v0, Lcom/vivo/PCTools/h/a;->q:B

    invoke-static {v1, v0}, Lcom/vivo/PCTools/h/a;->needtobackup(Ljava/util/ArrayList;B)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "id"

    const-string v9, "image"

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "count"

    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->j()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "name"

    iget-object v9, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    const v10, 0x7f0b0128

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_11
    sget-byte v0, Lcom/vivo/PCTools/h/a;->r:B

    invoke-static {v1, v0}, Lcom/vivo/PCTools/h/a;->needtobackup(Ljava/util/ArrayList;B)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "id"

    const-string v9, "music"

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "count"

    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->k()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "name"

    iget-object v9, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    const v10, 0x7f0b0129

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_12
    sget-byte v0, Lcom/vivo/PCTools/h/a;->s:B

    invoke-static {v1, v0}, Lcom/vivo/PCTools/h/a;->needtobackup(Ljava/util/ArrayList;B)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "id"

    const-string v9, "video"

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "count"

    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->l()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "name"

    iget-object v9, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    const v10, 0x7f0b012a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_13
    sget-byte v0, Lcom/vivo/PCTools/h/a;->t:B

    invoke-static {v1, v0}, Lcom/vivo/PCTools/h/a;->needtobackup(Ljava/util/ArrayList;B)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "id"

    const-string v9, "document"

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "count"

    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->m()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "name"

    iget-object v9, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    const v10, 0x7f0b012e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_14
    sget-byte v0, Lcom/vivo/PCTools/h/a;->v:B

    invoke-static {v1, v0}, Lcom/vivo/PCTools/h/a;->needtobackup(Ljava/util/ArrayList;B)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->J:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/vivo/PCTools/h/a;->a(Ljava/util/ArrayList;)Lcom/google/gson/JsonArray;

    move-result-object v2

    const-string v9, "id"

    const-string v10, "thirdapp"

    invoke-virtual {v0, v9, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "count"

    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v9, "name"

    iget-object v10, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    const v11, 0x7f0b012b

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "list"

    invoke-virtual {v0, v9, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vivo/PCTools/h/a;->J:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_15
    const-string v0, "counter"

    invoke-virtual {v4, v0, v5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v2, "custom"

    if-nez v1, :cond_27

    move v0, v6

    :goto_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->l:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v8, v4}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "counter"

    invoke-virtual {v4, v0, v5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v0, "custom"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->l:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v13}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v8, v4}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    :try_start_5
    invoke-virtual {v9, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v10, "id"

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "contact"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    sget-byte v1, Lcom/vivo/PCTools/h/a;->e:B

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    :goto_8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_2

    :cond_18
    const-string v10, "id"

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "calllog"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    sget-byte v1, Lcom/vivo/PCTools/h/a;->m:B

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_19
    const-string v10, "id"

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "calendar"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    sget-byte v1, Lcom/vivo/PCTools/h/a;->f:B

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1a
    const-string v10, "id"

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "sms"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    sget-byte v1, Lcom/vivo/PCTools/h/a;->n:B

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1b
    const-string v10, "id"

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mms"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    sget-byte v1, Lcom/vivo/PCTools/h/a;->o:B

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1c
    const-string v10, "id"

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "bookmark"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    sget-byte v1, Lcom/vivo/PCTools/h/a;->z:B

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_1d
    const-string v10, "id"

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "theme"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    sget-byte v1, Lcom/vivo/PCTools/h/a;->A:B

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_1e
    const-string v10, "id"

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "note"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    sget-byte v1, Lcom/vivo/PCTools/h/a;->p:B

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_1f
    const-string v10, "id"

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "image"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    sget-byte v1, Lcom/vivo/PCTools/h/a;->q:B

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_20
    const-string v10, "id"

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "music"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    sget-byte v1, Lcom/vivo/PCTools/h/a;->r:B

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_21
    const-string v10, "id"

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "video"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    sget-byte v1, Lcom/vivo/PCTools/h/a;->s:B

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_22
    const-string v10, "id"

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "document"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    sget-byte v1, Lcom/vivo/PCTools/h/a;->t:B

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_23
    const-string v10, "id"

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "system"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    sget-byte v1, Lcom/vivo/PCTools/h/a;->u:B

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_24
    const-string v10, "id"

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "thirdapp"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    sget-byte v10, Lcom/vivo/PCTools/h/a;->v:B

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/vivo/PCTools/h/a;->J:Ljava/util/ArrayList;

    const-string v10, "list"

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v10

    move v1, v6

    :goto_9
    invoke-virtual {v10}, Lcom/google/gson/JsonArray;->size()I

    move-result v11

    if-ge v1, v11, :cond_17

    iget-object v11, p0, Lcom/vivo/PCTools/h/a;->J:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_25
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    check-cast v0, Lcom/vivo/PCTools/Pcserver/ServerService;

    invoke-virtual {v0}, Lcom/vivo/PCTools/Pcserver/ServerService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v9, 0xc

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4

    :catch_2
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v9

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_26
    const/4 v0, 0x3

    goto/16 :goto_6

    :cond_27
    move v0, v7

    goto/16 :goto_7

    :cond_28
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v1, Lcom/vivo/PCTools/h/a;->e:B

    if-ne v0, v1, :cond_2b

    :try_start_8
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/vivo/PCTools/h/a;->getVcfVersion(Ljava/io/File;)I

    move-result v2

    new-instance v4, Lcom/vivo/vcard/y;

    const/4 v0, 0x0

    invoke-direct {v4, v2, v0}, Lcom/vivo/vcard/y;-><init>(ILandroid/accounts/Account;)V

    invoke-static {v1}, Lcom/vivo/PCTools/h/a;->getContactCount(Ljava/io/File;)I

    move-result v0

    if-lez v0, :cond_2a

    new-instance v5, Lcom/vivo/PCTools/h/d;

    iget-object v8, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-direct {v5, p0, v8, v0}, Lcom/vivo/PCTools/h/d;-><init>(Lcom/vivo/PCTools/h/a;Landroid/content/ContentResolver;I)V

    invoke-virtual {v4, v5}, Lcom/vivo/vcard/y;->addEntryHandler(Lcom/vivo/vcard/VCardEntryHandler;)V

    const v0, -0x3fffffff    # -2.0000002f

    if-ne v2, v0, :cond_29

    new-instance v0, Lcom/vivo/vcard/ag;

    invoke-direct {v0, v2}, Lcom/vivo/vcard/ag;-><init>(I)V

    :goto_a
    invoke-virtual {v0, v4}, Lcom/vivo/vcard/aa;->addInterpreter(Lcom/vivo/vcard/VCardInterpreter;)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v2}, Lcom/vivo/vcard/aa;->parse(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v2, Lcom/vivo/PCTools/h/a;->e:B

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1, v13}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_29
    :try_start_9
    new-instance v0, Lcom/vivo/vcard/af;

    invoke-direct {v0, v2}, Lcom/vivo/vcard/af;-><init>(I)V

    goto :goto_a

    :cond_2a
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->e:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v0, "contact"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    :cond_2b
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v1, Lcom/vivo/PCTools/h/a;->m:B

    if-ne v0, v1, :cond_2c

    :try_start_a
    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->n()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->m:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v13}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :cond_2c
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v1, Lcom/vivo/PCTools/h/a;->z:B

    if-ne v0, v1, :cond_2d

    :try_start_b
    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->p()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->z:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v13}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :cond_2d
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v1, Lcom/vivo/PCTools/h/a;->n:B

    if-ne v0, v1, :cond_2e

    :try_start_c
    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->r()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->n:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v13}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :cond_2e
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v1, Lcom/vivo/PCTools/h/a;->o:B

    if-ne v0, v1, :cond_2f

    :try_start_d
    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->t()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->o:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v13}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :cond_2f
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v1, Lcom/vivo/PCTools/h/a;->p:B

    if-ne v0, v1, :cond_30

    :try_start_e
    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->q()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->p:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v13}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :cond_30
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v1, Lcom/vivo/PCTools/h/a;->f:B

    if-ne v0, v1, :cond_31

    :try_start_f
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/vivo/vcalendar/k;

    iget-object v2, p0, Lcom/vivo/PCTools/h/a;->K:Landroid/content/Context;

    new-instance v4, Lcom/vivo/PCTools/h/c;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/vivo/PCTools/h/c;-><init>(Lcom/vivo/PCTools/h/a;B)V

    invoke-direct {v1, v0, v2, v4}, Lcom/vivo/vcalendar/k;-><init>(Landroid/net/Uri;Landroid/content/Context;Lcom/vivo/vcalendar/VCalStatusChangeOperator;)V

    invoke-virtual {v1}, Lcom/vivo/vcalendar/k;->startParse()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    goto/16 :goto_0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->f:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v13}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :cond_31
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v1, Lcom/vivo/PCTools/h/a;->A:B

    if-ne v0, v1, :cond_32

    :try_start_10
    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->s()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->A:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v13}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :cond_32
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v1, Lcom/vivo/PCTools/h/a;->q:B

    if-ne v0, v1, :cond_33

    :try_start_11
    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->u()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    goto/16 :goto_0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->q:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v13}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :cond_33
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v1, Lcom/vivo/PCTools/h/a;->r:B

    if-ne v0, v1, :cond_34

    :try_start_12
    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->v()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    goto/16 :goto_0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->r:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v13}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :cond_34
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v1, Lcom/vivo/PCTools/h/a;->s:B

    if-ne v0, v1, :cond_35

    :try_start_13
    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->w()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    goto/16 :goto_0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->s:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v13}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :cond_35
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v1, Lcom/vivo/PCTools/h/a;->t:B

    if-ne v0, v1, :cond_36

    :try_start_14
    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->x()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_e

    goto/16 :goto_0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->t:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v13}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :cond_36
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v1, Lcom/vivo/PCTools/h/a;->u:B

    if-ne v0, v1, :cond_37

    :try_start_15
    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->y()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_f

    goto/16 :goto_0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->u:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v13}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :cond_37
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v1, Lcom/vivo/PCTools/h/a;->v:B

    if-ne v0, v1, :cond_38

    :try_start_16
    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->z()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_10

    goto/16 :goto_0

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->v:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v13}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :cond_38
    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sget-byte v1, Lcom/vivo/PCTools/h/a;->C:B

    if-ne v0, v1, :cond_0

    :try_start_17
    invoke-direct {p0}, Lcom/vivo/PCTools/h/a;->o()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_11

    goto/16 :goto_0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    sget-byte v1, Lcom/vivo/PCTools/h/a;->C:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v13}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :cond_39
    move-object v1, v3

    goto/16 :goto_3
.end method
