.class public final enum Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;
.super Ljava/lang/Enum;
.source "ClientLogConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubmitModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;

.field public static final enum MODEL_PATCH:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;

.field public static final enum MODEL_SINGLE:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 58
    new-instance v0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;

    const-string v1, "MODEL_PATCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;->MODEL_PATCH:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;

    new-instance v1, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;

    const-string v3, "MODEL_SINGLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;->MODEL_SINGLE:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 57
    sput-object v3, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;->$VALUES:[Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;
    .locals 1

    .line 57
    const-class v0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;
    .locals 1

    .line 57
    sget-object v0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;->$VALUES:[Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;

    return-object v0
.end method
