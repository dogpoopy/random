.class public final enum Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;
.super Ljava/lang/Enum;
.source "ClientLogCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

.field public static final enum DATABASE_NOT_OPEN_ERROR:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

.field public static final enum NO_EXIST_METHOD:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

.field public static final enum PARAM_ERROR:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

.field public static final enum SUCCESS:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

.field public static final enum UNKNOWN_ERROR:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;


# instance fields
.field private final code:I

.field private final msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 5
    new-instance v0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    const-string v3, "Success"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->SUCCESS:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    .line 6
    new-instance v1, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    const-string v3, "NO_EXIST_METHOD"

    const/4 v4, 0x1

    const-string v5, "Method does not exist (methodId does not exist under channel)"

    invoke-direct {v1, v3, v4, v4, v5}, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->NO_EXIST_METHOD:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    .line 7
    new-instance v3, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    const-string v5, "PARAM_ERROR"

    const/4 v6, 0x2

    const-string v7, "Parameter error (required, wrong type)"

    invoke-direct {v3, v5, v6, v6, v7}, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->PARAM_ERROR:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    .line 8
    new-instance v5, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    const-string v7, "DATABASE_NOT_OPEN_ERROR"

    const/4 v8, 0x3

    const/4 v9, 0x7

    const-string v10, "Database error"

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->DATABASE_NOT_OPEN_ERROR:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    .line 9
    new-instance v7, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    const-string v9, "UNKNOWN_ERROR"

    const/4 v10, 0x4

    const/16 v11, 0x3e8

    const-string v12, "Unknown error"

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 4
    sput-object v9, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->$VALUES:[Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->code:I

    .line 17
    iput-object p4, p0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->msg:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;
    .locals 1

    .line 4
    const-class v0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;
    .locals 1

    .line 4
    sget-object v0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->$VALUES:[Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
