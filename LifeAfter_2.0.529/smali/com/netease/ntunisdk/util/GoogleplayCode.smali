.class public final enum Lcom/netease/ntunisdk/util/GoogleplayCode;
.super Ljava/lang/Enum;
.source "GoogleplayCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/util/GoogleplayCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/util/GoogleplayCode;

.field public static final enum FAILURE:Lcom/netease/ntunisdk/util/GoogleplayCode;

.field public static final enum JSON_ERROR:Lcom/netease/ntunisdk/util/GoogleplayCode;

.field public static final enum NO_EXIST_METHOD:Lcom/netease/ntunisdk/util/GoogleplayCode;

.field public static final enum NO_LOGIN:Lcom/netease/ntunisdk/util/GoogleplayCode;

.field public static final enum PARAM_ERROR:Lcom/netease/ntunisdk/util/GoogleplayCode;

.field public static final enum SUCCESS:Lcom/netease/ntunisdk/util/GoogleplayCode;

.field public static final enum UNKNOWN_ERROR:Lcom/netease/ntunisdk/util/GoogleplayCode;


# instance fields
.field private final code:I

.field private final msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 14
    new-instance v0, Lcom/netease/ntunisdk/util/GoogleplayCode;

    const/4 v1, 0x0

    const-string v2, "JSON_ERROR"

    const/4 v3, -0x2

    const-string v4, "Incoming json format error"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/netease/ntunisdk/util/GoogleplayCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/util/GoogleplayCode;->JSON_ERROR:Lcom/netease/ntunisdk/util/GoogleplayCode;

    .line 15
    new-instance v0, Lcom/netease/ntunisdk/util/GoogleplayCode;

    const/4 v2, 0x1

    const-string v3, "FAILURE"

    const/4 v4, -0x1

    const-string v5, "Call failed"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/netease/ntunisdk/util/GoogleplayCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/util/GoogleplayCode;->FAILURE:Lcom/netease/ntunisdk/util/GoogleplayCode;

    .line 16
    new-instance v0, Lcom/netease/ntunisdk/util/GoogleplayCode;

    const/4 v3, 0x2

    const-string v4, "SUCCESS"

    const-string v5, "Call success"

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/netease/ntunisdk/util/GoogleplayCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/util/GoogleplayCode;->SUCCESS:Lcom/netease/ntunisdk/util/GoogleplayCode;

    .line 17
    new-instance v0, Lcom/netease/ntunisdk/util/GoogleplayCode;

    const/4 v4, 0x3

    const-string v5, "NO_EXIST_METHOD"

    const-string v6, "Method does not exist (methodId does not exist under channel)"

    invoke-direct {v0, v5, v4, v2, v6}, Lcom/netease/ntunisdk/util/GoogleplayCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/util/GoogleplayCode;->NO_EXIST_METHOD:Lcom/netease/ntunisdk/util/GoogleplayCode;

    .line 18
    new-instance v0, Lcom/netease/ntunisdk/util/GoogleplayCode;

    const/4 v5, 0x4

    const-string v6, "PARAM_ERROR"

    const-string v7, "Parameter error (required, wrong type)"

    invoke-direct {v0, v6, v5, v3, v7}, Lcom/netease/ntunisdk/util/GoogleplayCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/util/GoogleplayCode;->PARAM_ERROR:Lcom/netease/ntunisdk/util/GoogleplayCode;

    .line 19
    new-instance v0, Lcom/netease/ntunisdk/util/GoogleplayCode;

    const/4 v6, 0x5

    const-string v7, "NO_LOGIN"

    const-string v8, "Account not logged in"

    invoke-direct {v0, v7, v6, v4, v8}, Lcom/netease/ntunisdk/util/GoogleplayCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/util/GoogleplayCode;->NO_LOGIN:Lcom/netease/ntunisdk/util/GoogleplayCode;

    .line 20
    new-instance v0, Lcom/netease/ntunisdk/util/GoogleplayCode;

    const/4 v7, 0x6

    const-string v8, "UNKNOWN_ERROR"

    const/16 v9, 0x2710

    const-string v10, "Unknown error"

    invoke-direct {v0, v8, v7, v9, v10}, Lcom/netease/ntunisdk/util/GoogleplayCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/util/GoogleplayCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/util/GoogleplayCode;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/netease/ntunisdk/util/GoogleplayCode;

    .line 4
    sget-object v8, Lcom/netease/ntunisdk/util/GoogleplayCode;->JSON_ERROR:Lcom/netease/ntunisdk/util/GoogleplayCode;

    aput-object v8, v0, v1

    sget-object v1, Lcom/netease/ntunisdk/util/GoogleplayCode;->FAILURE:Lcom/netease/ntunisdk/util/GoogleplayCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/ntunisdk/util/GoogleplayCode;->SUCCESS:Lcom/netease/ntunisdk/util/GoogleplayCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/ntunisdk/util/GoogleplayCode;->NO_EXIST_METHOD:Lcom/netease/ntunisdk/util/GoogleplayCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netease/ntunisdk/util/GoogleplayCode;->PARAM_ERROR:Lcom/netease/ntunisdk/util/GoogleplayCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netease/ntunisdk/util/GoogleplayCode;->NO_LOGIN:Lcom/netease/ntunisdk/util/GoogleplayCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netease/ntunisdk/util/GoogleplayCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/util/GoogleplayCode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/netease/ntunisdk/util/GoogleplayCode;->$VALUES:[Lcom/netease/ntunisdk/util/GoogleplayCode;

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

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/netease/ntunisdk/util/GoogleplayCode;->code:I

    .line 26
    iput-object p4, p0, Lcom/netease/ntunisdk/util/GoogleplayCode;->msg:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/util/GoogleplayCode;
    .locals 1

    .line 4
    const-class v0, Lcom/netease/ntunisdk/util/GoogleplayCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/util/GoogleplayCode;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/util/GoogleplayCode;
    .locals 1

    .line 4
    sget-object v0, Lcom/netease/ntunisdk/util/GoogleplayCode;->$VALUES:[Lcom/netease/ntunisdk/util/GoogleplayCode;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/util/GoogleplayCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/util/GoogleplayCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/netease/ntunisdk/util/GoogleplayCode;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/netease/ntunisdk/util/GoogleplayCode;->msg:Ljava/lang/String;

    return-object v0
.end method
