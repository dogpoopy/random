.class public Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:J

.field private final c:[Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->c:[Ljava/lang/String;

    iput-wide p1, p0, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->b:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->a:Z

    iput-object p3, p0, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;[Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->c:[Ljava/lang/String;

    iput-wide p1, p0, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->b:J

    iput-boolean p5, p0, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->a:Z

    iput-object p3, p0, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMinVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->b:J

    return-wide v0
.end method

.method public getSignatures()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public getSkinSupportVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public isStrictCheckMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->a:Z

    return v0
.end method
