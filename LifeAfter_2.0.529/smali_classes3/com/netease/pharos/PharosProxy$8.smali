.class Lcom/netease/pharos/PharosProxy$8;
.super Ljava/lang/Object;
.source "PharosProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/PharosProxy;->wrapTask(Lorg/json/JSONObject;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/PharosProxy;


# direct methods
.method constructor <init>(Lcom/netease/pharos/PharosProxy;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy$8;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy$8;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->pharosqosprobe()V

    return-void
.end method
