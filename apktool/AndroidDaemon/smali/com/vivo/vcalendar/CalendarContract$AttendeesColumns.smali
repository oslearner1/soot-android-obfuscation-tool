.class public interface abstract Lcom/vivo/vcalendar/CalendarContract$AttendeesColumns;
.super Ljava/lang/Object;


# static fields
.field public static final ATTENDEE_EMAIL:Ljava/lang/String; = "attendeeEmail"

.field public static final ATTENDEE_IDENTITY:Ljava/lang/String;

.field public static final ATTENDEE_ID_NAMESPACE:Ljava/lang/String;

.field public static final ATTENDEE_NAME:Ljava/lang/String; = "attendeeName"

.field public static final ATTENDEE_RELATIONSHIP:Ljava/lang/String; = "attendeeRelationship"

.field public static final ATTENDEE_STATUS:Ljava/lang/String; = "attendeeStatus"

.field public static final ATTENDEE_STATUS_ACCEPTED:I = 0x1

.field public static final ATTENDEE_STATUS_DECLINED:I = 0x2

.field public static final ATTENDEE_STATUS_INVITED:I = 0x3

.field public static final ATTENDEE_STATUS_NONE:I = 0x0

.field public static final ATTENDEE_STATUS_TENTATIVE:I = 0x4

.field public static final ATTENDEE_TYPE:Ljava/lang/String; = "attendeeType"

.field public static final EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final RELATIONSHIP_ATTENDEE:I = 0x1

.field public static final RELATIONSHIP_NONE:I = 0x0

.field public static final RELATIONSHIP_ORGANIZER:I = 0x2

.field public static final RELATIONSHIP_PERFORMER:I = 0x3

.field public static final RELATIONSHIP_SPEAKER:I = 0x4

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_OPTIONAL:I = 0x2

.field public static final TYPE_REQUIRED:I = 0x1

.field public static final TYPE_RESOURCE:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$AttendeesColumns;->ATTENDEE_IDENTITY:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_1

    :goto_1
    sput-object v1, Lcom/vivo/vcalendar/CalendarContract$AttendeesColumns;->ATTENDEE_ID_NAMESPACE:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "attendeeIdentity"

    goto :goto_0

    :cond_1
    const-string v1, "attendeeIdNamespace"

    goto :goto_1
.end method
