.class public final enum Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;
.super Ljava/lang/Enum;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/scan/server/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

.field public static final enum FINISHED:Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

.field public static final enum PENDING:Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

.field public static final enum RUNNING:Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 475
    new-instance v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    const/4 v1, 0x0

    const-string v2, "PENDING"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;->PENDING:Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    .line 479
    new-instance v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v2}, Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;->RUNNING:Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    .line 483
    new-instance v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    const/4 v3, 0x2

    const-string v4, "FINISHED"

    invoke-direct {v0, v4, v3}, Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;->FINISHED:Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    .line 471
    sget-object v4, Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;->PENDING:Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;->RUNNING:Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;->FINISHED:Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;->$VALUES:[Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 471
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;
    .locals 1

    .line 471
    const-class v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    return-object p0
.end method

.method public static values()[Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;
    .locals 1

    .line 471
    sget-object v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;->$VALUES:[Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    invoke-virtual {v0}, [Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    return-object v0
.end method
