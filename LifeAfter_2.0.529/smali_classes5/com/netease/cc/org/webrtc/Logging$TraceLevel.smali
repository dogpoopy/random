.class public final enum Lcom/netease/cc/org/webrtc/Logging$TraceLevel;
.super Ljava/lang/Enum;
.source "Logging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/org/webrtc/Logging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TraceLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/cc/org/webrtc/Logging$TraceLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_ALL:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_APICALL:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_CRITICAL:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_DEBUG:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_DEFAULT:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_ERROR:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_INFO:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_MEMORY:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_MODULECALL:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_NONE:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_STATEINFO:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_STREAM:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_TERSEINFO:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_TIMER:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_WARNING:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;


# instance fields
.field public final level:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 58
    new-instance v0, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    const-string v1, "TRACE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;->TRACE_NONE:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    .line 59
    new-instance v1, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    const-string v3, "TRACE_STATEINFO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;->TRACE_STATEINFO:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    .line 60
    new-instance v3, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    const-string v5, "TRACE_WARNING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;->TRACE_WARNING:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    .line 61
    new-instance v5, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    const-string v7, "TRACE_ERROR"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v9}, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;->TRACE_ERROR:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    .line 62
    new-instance v7, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    const-string v10, "TRACE_CRITICAL"

    const/16 v11, 0x8

    invoke-direct {v7, v10, v9, v11}, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;->TRACE_CRITICAL:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    .line 63
    new-instance v10, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    const-string v12, "TRACE_APICALL"

    const/4 v13, 0x5

    const/16 v14, 0x10

    invoke-direct {v10, v12, v13, v14}, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;->TRACE_APICALL:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    .line 64
    new-instance v12, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    const-string v14, "TRACE_DEFAULT"

    const/4 v15, 0x6

    const/16 v13, 0xff

    invoke-direct {v12, v14, v15, v13}, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;->TRACE_DEFAULT:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    .line 65
    new-instance v13, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    const-string v14, "TRACE_MODULECALL"

    const/4 v15, 0x7

    const/16 v9, 0x20

    invoke-direct {v13, v14, v15, v9}, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;->TRACE_MODULECALL:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    .line 66
    new-instance v9, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    const-string v14, "TRACE_MEMORY"

    const/16 v15, 0x100

    invoke-direct {v9, v14, v11, v15}, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;->TRACE_MEMORY:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    .line 67
    new-instance v14, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    const-string v15, "TRACE_TIMER"

    const/16 v11, 0x9

    const/16 v8, 0x200

    invoke-direct {v14, v15, v11, v8}, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;->TRACE_TIMER:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    .line 68
    new-instance v8, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    const-string v15, "TRACE_STREAM"

    const/16 v11, 0xa

    const/16 v6, 0x400

    invoke-direct {v8, v15, v11, v6}, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;->TRACE_STREAM:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    .line 69
    new-instance v6, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    const-string v15, "TRACE_DEBUG"

    const/16 v11, 0xb

    const/16 v4, 0x800

    invoke-direct {v6, v15, v11, v4}, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;->TRACE_DEBUG:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    .line 70
    new-instance v4, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    const-string v15, "TRACE_INFO"

    const/16 v11, 0xc

    const/16 v2, 0x1000

    invoke-direct {v4, v15, v11, v2}, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;->TRACE_INFO:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    .line 71
    new-instance v2, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    const-string v15, "TRACE_TERSEINFO"

    const/16 v11, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0x2000

    invoke-direct {v2, v15, v11, v4}, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;->TRACE_TERSEINFO:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    .line 72
    new-instance v4, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    const-string v15, "TRACE_ALL"

    const/16 v11, 0xe

    move-object/from16 v17, v2

    const v2, 0xffff

    invoke-direct {v4, v15, v11, v2}, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;->TRACE_ALL:Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v9, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v11

    .line 57
    sput-object v2, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;->$VALUES:[Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;->level:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/cc/org/webrtc/Logging$TraceLevel;
    .locals 1

    .line 57
    const-class v0, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    return-object p0
.end method

.method public static values()[Lcom/netease/cc/org/webrtc/Logging$TraceLevel;
    .locals 1

    .line 57
    sget-object v0, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;->$VALUES:[Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    invoke-virtual {v0}, [Lcom/netease/cc/org/webrtc/Logging$TraceLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    return-object v0
.end method
