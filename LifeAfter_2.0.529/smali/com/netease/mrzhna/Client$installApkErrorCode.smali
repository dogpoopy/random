.class final enum Lcom/netease/mrzhna/Client$installApkErrorCode;
.super Ljava/lang/Enum;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mrzhna/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "installApkErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/mrzhna/Client$installApkErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/mrzhna/Client$installApkErrorCode;

.field public static final enum fileNotFound:Lcom/netease/mrzhna/Client$installApkErrorCode;

.field public static final enum innerException:Lcom/netease/mrzhna/Client$installApkErrorCode;

.field public static final enum noError:Lcom/netease/mrzhna/Client$installApkErrorCode;


# direct methods
.method private static synthetic $values()[Lcom/netease/mrzhna/Client$installApkErrorCode;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netease/mrzhna/Client$installApkErrorCode;

    .line 3798
    sget-object v1, Lcom/netease/mrzhna/Client$installApkErrorCode;->noError:Lcom/netease/mrzhna/Client$installApkErrorCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mrzhna/Client$installApkErrorCode;->fileNotFound:Lcom/netease/mrzhna/Client$installApkErrorCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mrzhna/Client$installApkErrorCode;->innerException:Lcom/netease/mrzhna/Client$installApkErrorCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 3799
    new-instance v0, Lcom/netease/mrzhna/Client$installApkErrorCode;

    const-string v1, "noError"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/mrzhna/Client$installApkErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mrzhna/Client$installApkErrorCode;->noError:Lcom/netease/mrzhna/Client$installApkErrorCode;

    .line 3800
    new-instance v0, Lcom/netease/mrzhna/Client$installApkErrorCode;

    const-string v1, "fileNotFound"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/netease/mrzhna/Client$installApkErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mrzhna/Client$installApkErrorCode;->fileNotFound:Lcom/netease/mrzhna/Client$installApkErrorCode;

    .line 3801
    new-instance v0, Lcom/netease/mrzhna/Client$installApkErrorCode;

    const-string v1, "innerException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/netease/mrzhna/Client$installApkErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mrzhna/Client$installApkErrorCode;->innerException:Lcom/netease/mrzhna/Client$installApkErrorCode;

    .line 3798
    invoke-static {}, Lcom/netease/mrzhna/Client$installApkErrorCode;->$values()[Lcom/netease/mrzhna/Client$installApkErrorCode;

    move-result-object v0

    sput-object v0, Lcom/netease/mrzhna/Client$installApkErrorCode;->$VALUES:[Lcom/netease/mrzhna/Client$installApkErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3798
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mrzhna/Client$installApkErrorCode;
    .locals 1

    .line 3798
    const-class v0, Lcom/netease/mrzhna/Client$installApkErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/mrzhna/Client$installApkErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/netease/mrzhna/Client$installApkErrorCode;
    .locals 1

    .line 3798
    sget-object v0, Lcom/netease/mrzhna/Client$installApkErrorCode;->$VALUES:[Lcom/netease/mrzhna/Client$installApkErrorCode;

    invoke-virtual {v0}, [Lcom/netease/mrzhna/Client$installApkErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mrzhna/Client$installApkErrorCode;

    return-object v0
.end method
