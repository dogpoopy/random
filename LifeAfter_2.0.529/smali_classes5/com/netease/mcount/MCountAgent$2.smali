.class Lcom/netease/mcount/MCountAgent$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mcount/ViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mcount/MCountAgent;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/netease/mcount/MCountAgent;


# direct methods
.method constructor <init>(Lcom/netease/mcount/MCountAgent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mcount/MCountAgent$2;->b:Lcom/netease/mcount/MCountAgent;

    iput-object p2, p0, Lcom/netease/mcount/MCountAgent$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent$2;->b:Lcom/netease/mcount/MCountAgent;

    invoke-static {v0}, Lcom/netease/mcount/MCountAgent;->a(Lcom/netease/mcount/MCountAgent;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent$2;->b:Lcom/netease/mcount/MCountAgent;

    invoke-static {v1}, Lcom/netease/mcount/MCountAgent;->b(Lcom/netease/mcount/MCountAgent;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onViewClicked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "page_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "button_name"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object v1, p0, Lcom/netease/mcount/MCountAgent$2;->b:Lcom/netease/mcount/MCountAgent;

    iget-object v2, p0, Lcom/netease/mcount/MCountAgent$2;->a:Landroid/content/Context;

    const-string v3, "click"

    invoke-virtual {v1, v2, v3, v0}, Lcom/netease/mcount/MCountAgent;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent$2;->b:Lcom/netease/mcount/MCountAgent;

    invoke-static {v0}, Lcom/netease/mcount/MCountAgent;->c(Lcom/netease/mcount/MCountAgent;)Lcom/netease/mcount/a/c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mcount/a/c;->a:Z

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/netease/mcount/MCountAgent$2;->b:Lcom/netease/mcount/MCountAgent;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/netease/mcount/MCountAgent;->a(Lcom/netease/mcount/MCountAgent;Lcom/netease/mcount/ViewClickListener;)Lcom/netease/mcount/ViewClickListener;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mcount/MCountAgent$2;->b:Lcom/netease/mcount/MCountAgent;

    invoke-static {v0}, Lcom/netease/mcount/MCountAgent;->d(Lcom/netease/mcount/MCountAgent;)Lcom/netease/mcount/ViewClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent$2;->b:Lcom/netease/mcount/MCountAgent;

    invoke-static {v0}, Lcom/netease/mcount/MCountAgent;->d(Lcom/netease/mcount/MCountAgent;)Lcom/netease/mcount/ViewClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/mcount/ViewClickListener;->onViewClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method
