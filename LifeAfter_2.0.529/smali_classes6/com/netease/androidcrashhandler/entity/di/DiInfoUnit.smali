.class public Lcom/netease/androidcrashhandler/entity/di/DiInfoUnit;
.super Ljava/lang/Object;
.source "DiInfoUnit.java"


# instance fields
.field public mKey:Ljava/lang/String;

.field public mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiInfoUnit;->mKey:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiInfoUnit;->mValue:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/netease/androidcrashhandler/entity/di/DiInfoUnit;->mKey:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/netease/androidcrashhandler/entity/di/DiInfoUnit;->mValue:Ljava/lang/String;

    return-void
.end method
