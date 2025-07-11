.class public final enum Lcom/netease/ntunisdk/DownLoadTask$Type;
.super Ljava/lang/Enum;
.source "DownLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/DownLoadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/DownLoadTask$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/DownLoadTask$Type;

.field public static final enum Audio:Lcom/netease/ntunisdk/DownLoadTask$Type;

.field public static final enum Image:Lcom/netease/ntunisdk/DownLoadTask$Type;

.field public static final enum Video:Lcom/netease/ntunisdk/DownLoadTask$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Lcom/netease/ntunisdk/DownLoadTask$Type;

    const/4 v1, 0x0

    const-string v2, "Image"

    invoke-direct {v0, v2, v1}, Lcom/netease/ntunisdk/DownLoadTask$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/DownLoadTask$Type;->Image:Lcom/netease/ntunisdk/DownLoadTask$Type;

    new-instance v0, Lcom/netease/ntunisdk/DownLoadTask$Type;

    const/4 v2, 0x1

    const-string v3, "Video"

    invoke-direct {v0, v3, v2}, Lcom/netease/ntunisdk/DownLoadTask$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/DownLoadTask$Type;->Video:Lcom/netease/ntunisdk/DownLoadTask$Type;

    new-instance v0, Lcom/netease/ntunisdk/DownLoadTask$Type;

    const/4 v3, 0x2

    const-string v4, "Audio"

    invoke-direct {v0, v4, v3}, Lcom/netease/ntunisdk/DownLoadTask$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/DownLoadTask$Type;->Audio:Lcom/netease/ntunisdk/DownLoadTask$Type;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netease/ntunisdk/DownLoadTask$Type;

    .line 22
    sget-object v4, Lcom/netease/ntunisdk/DownLoadTask$Type;->Image:Lcom/netease/ntunisdk/DownLoadTask$Type;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netease/ntunisdk/DownLoadTask$Type;->Video:Lcom/netease/ntunisdk/DownLoadTask$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/ntunisdk/DownLoadTask$Type;->Audio:Lcom/netease/ntunisdk/DownLoadTask$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netease/ntunisdk/DownLoadTask$Type;->$VALUES:[Lcom/netease/ntunisdk/DownLoadTask$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/DownLoadTask$Type;
    .locals 1

    .line 22
    const-class v0, Lcom/netease/ntunisdk/DownLoadTask$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/DownLoadTask$Type;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/DownLoadTask$Type;
    .locals 1

    .line 22
    sget-object v0, Lcom/netease/ntunisdk/DownLoadTask$Type;->$VALUES:[Lcom/netease/ntunisdk/DownLoadTask$Type;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/DownLoadTask$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/DownLoadTask$Type;

    return-object v0
.end method
