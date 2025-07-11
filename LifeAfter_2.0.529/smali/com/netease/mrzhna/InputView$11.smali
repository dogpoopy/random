.class Lcom/netease/mrzhna/InputView$11;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/InputView;->show(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/InputView;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/InputView;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 319
    iget-object v0, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v0}, Lcom/netease/mrzhna/InputView;->access$800(Lcom/netease/mrzhna/InputView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    .line 320
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 321
    iget-object v1, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v1}, Lcom/netease/mrzhna/InputView;->access$300(Lcom/netease/mrzhna/InputView;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v2}, Lcom/netease/mrzhna/InputView;->access$500(Lcom/netease/mrzhna/InputView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 322
    iget-object v1, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v1}, Lcom/netease/mrzhna/InputView;->access$300(Lcom/netease/mrzhna/InputView;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v2}, Lcom/netease/mrzhna/InputView;->access$100(Lcom/netease/mrzhna/InputView;)I

    move-result v2

    const/high16 v3, 0x12000000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 323
    iget-object v1, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v1}, Lcom/netease/mrzhna/InputView;->access$800(Lcom/netease/mrzhna/InputView;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 324
    iget-object v1, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v1}, Lcom/netease/mrzhna/InputView;->access$900(Lcom/netease/mrzhna/InputView;)V

    .line 325
    iget-object v1, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v1}, Lcom/netease/mrzhna/InputView;->access$1000(Lcom/netease/mrzhna/InputView;)V

    .line 326
    iget-object v1, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v1}, Lcom/netease/mrzhna/InputView;->access$1100(Lcom/netease/mrzhna/InputView;)V

    .line 327
    iget-object v1, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v1}, Lcom/netease/mrzhna/InputView;->access$700(Lcom/netease/mrzhna/InputView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v1}, Lcom/netease/mrzhna/InputView;->access$700(Lcom/netease/mrzhna/InputView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v1}, Lcom/netease/mrzhna/InputView;->access$300(Lcom/netease/mrzhna/InputView;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v3}, Lcom/netease/mrzhna/InputView;->access$700(Lcom/netease/mrzhna/InputView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v1, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v1}, Lcom/netease/mrzhna/InputView;->access$300(Lcom/netease/mrzhna/InputView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 331
    iget-object v3, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v3}, Lcom/netease/mrzhna/InputView;->access$300(Lcom/netease/mrzhna/InputView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v1}, Lcom/netease/mrzhna/InputView;->access$300(Lcom/netease/mrzhna/InputView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v1}, Lcom/netease/mrzhna/InputView;->access$600(Lcom/netease/mrzhna/InputView;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v1}, Lcom/netease/mrzhna/InputView;->access$600(Lcom/netease/mrzhna/InputView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 336
    iget-object v1, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v1}, Lcom/netease/mrzhna/InputView;->access$300(Lcom/netease/mrzhna/InputView;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v2}, Lcom/netease/mrzhna/InputView;->access$600(Lcom/netease/mrzhna/InputView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 338
    :cond_2
    iget-object v1, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v1}, Lcom/netease/mrzhna/InputView;->access$300(Lcom/netease/mrzhna/InputView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 340
    :goto_1
    iget-object v1, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v1}, Lcom/netease/mrzhna/InputView;->access$300(Lcom/netease/mrzhna/InputView;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 341
    iget-object v1, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v1}, Lcom/netease/mrzhna/InputView;->access$300(Lcom/netease/mrzhna/InputView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 342
    iget-object v1, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v1}, Lcom/netease/mrzhna/InputView;->access$300(Lcom/netease/mrzhna/InputView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 343
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v1, v3, :cond_3

    .line 344
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/view/View;->isInLayout()Z

    move-result v1

    if-nez v1, :cond_3

    .line 346
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 348
    :cond_3
    iget-object v0, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v0}, Lcom/netease/mrzhna/InputView;->access$1200(Lcom/netease/mrzhna/InputView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 349
    iget-object v0, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v0}, Lcom/netease/mrzhna/InputView;->access$300(Lcom/netease/mrzhna/InputView;)Landroid/widget/EditText;

    move-result-object v0

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Lcom/netease/mrzhna/InputView$11$1;

    invoke-direct {v3, p0}, Lcom/netease/mrzhna/InputView$11$1;-><init>(Lcom/netease/mrzhna/InputView$11;)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_2

    .line 361
    :cond_4
    iget-object v0, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v0}, Lcom/netease/mrzhna/InputView;->access$300(Lcom/netease/mrzhna/InputView;)Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v1, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 364
    :goto_2
    iget-object v0, p0, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-virtual {v0}, Lcom/netease/mrzhna/InputView;->addLengthFilter()V

    return-void
.end method
