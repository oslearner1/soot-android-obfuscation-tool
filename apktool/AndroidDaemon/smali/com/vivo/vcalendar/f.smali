.class public final Lcom/vivo/vcalendar/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/ContentValues;

.field private final b:Ljava/util/LinkedList;

.field private final c:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcalendar/f;->a:Landroid/content/ContentValues;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcalendar/f;->b:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcalendar/f;->c:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic a(Lcom/vivo/vcalendar/f;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/f;->a:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic b(Lcom/vivo/vcalendar/f;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/f;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/vcalendar/f;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/f;->c:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public final getAlarmsList()Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/f;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final getAttendeesList()Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/f;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final getEventValues()Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/f;->a:Landroid/content/ContentValues;

    return-object v0
.end method
