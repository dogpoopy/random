.class public Lcom/netease/mcount/MCountKeyData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3}, Lcom/netease/mcount/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mcount/MCountKeyData;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mcount/MCountKeyData;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/netease/mcount/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/a/c;

    move-result-object v0

    iput-object p3, v0, Lcom/netease/mcount/a/c;->f:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/netease/mcount/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/a/c;

    move-result-object p1

    iput-object p4, p1, Lcom/netease/mcount/a/c;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1

    iget-object v0, p0, Lcom/netease/mcount/MCountKeyData;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mcount/MCountKeyData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lcom/netease/mcount/MCountKeyData;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/netease/mcount/MCountKeyData;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netease/mcount/MCountKeyData;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mcount/MCountKeyData;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
