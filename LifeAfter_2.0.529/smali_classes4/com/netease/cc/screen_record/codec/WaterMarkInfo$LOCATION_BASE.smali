.class public final enum Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;
.super Ljava/lang/Enum;
.source "WaterMarkInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/screen_record/codec/WaterMarkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LOCATION_BASE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

.field public static final enum LEFT_BOTTOM:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

.field public static final enum LEFT_TOP:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

.field public static final enum NONE:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

.field public static final enum RIGHT_BOTTOM:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

.field public static final enum RIGHT_TOP:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->NONE:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    .line 8
    new-instance v0, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    const/4 v2, 0x1

    const-string v3, "LEFT_BOTTOM"

    invoke-direct {v0, v3, v2}, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->LEFT_BOTTOM:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    .line 9
    new-instance v0, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    const/4 v3, 0x2

    const-string v4, "LEFT_TOP"

    invoke-direct {v0, v4, v3}, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->LEFT_TOP:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    .line 10
    new-instance v0, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    const/4 v4, 0x3

    const-string v5, "RIGHT_TOP"

    invoke-direct {v0, v5, v4}, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->RIGHT_TOP:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    .line 11
    new-instance v0, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    const/4 v5, 0x4

    const-string v6, "RIGHT_BOTTOM"

    invoke-direct {v0, v6, v5}, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->RIGHT_BOTTOM:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    .line 6
    sget-object v6, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->NONE:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    aput-object v6, v0, v1

    sget-object v1, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->LEFT_BOTTOM:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->LEFT_TOP:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->RIGHT_TOP:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->RIGHT_BOTTOM:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->$VALUES:[Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;
    .locals 1

    .line 6
    const-class v0, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    return-object p0
.end method

.method public static values()[Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;
    .locals 1

    .line 6
    sget-object v0, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->$VALUES:[Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    invoke-virtual {v0}, [Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    return-object v0
.end method
