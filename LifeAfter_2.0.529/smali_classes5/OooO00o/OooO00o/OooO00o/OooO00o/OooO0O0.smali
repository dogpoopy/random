.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;
.super Lcom/netease/environment/regex/Matcher;
.source "Matcher.java"


# instance fields
.field public OooO:I

.field public OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;

.field public OooO0O0:[I

.field public OooO0OO:I

.field public OooO0Oo:I

.field public OooO0o:Ljava/lang/CharSequence;

.field public OooO0o0:I

.field public OooO0oO:I

.field public OooO0oo:I

.field public OooOO0:I

.field public OooOO0O:[I

.field public OooOO0o:Z

.field public OooOOO0:Z


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/netease/environment/regex/Matcher;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oO:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oo:I

    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    .line 4
    iput v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooOO0:I

    .line 9
    iput-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooOO0o:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooOOO0:Z

    .line 15
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;

    .line 16
    iput-object p2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0o:Ljava/lang/CharSequence;

    .line 18
    iget p2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooOO0o:I

    const/16 v0, 0xa

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    .line 19
    new-array p2, p2, [I

    iput-object p2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0O0:[I

    .line 20
    iget p1, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooOOO0:I

    new-array p1, p1, [I

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooOO0O:[I

    .line 22
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;

    return-void
.end method


# virtual methods
.method public OooO00o()LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;
    .locals 5

    const/4 v0, -0x1

    .line 1
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oo:I

    const/4 v1, 0x0

    .line 2
    iput v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    .line 3
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooOO0:I

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0O0:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 5
    aput v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    :goto_1
    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooOO0O:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 7
    aput v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iput v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0OO:I

    .line 10
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0o:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 11
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0Oo:I

    return-object p0
.end method

.method public OooO00o(I)Z
    .locals 5

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 12
    :cond_0
    iput p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oo:I

    .line 13
    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooOO0:I

    if-gez v1, :cond_1

    move v1, p1

    :cond_1
    iput v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooOO0:I

    const/4 v1, 0x0

    .line 14
    :goto_0
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0O0:[I

    array-length v3, v2

    const/4 v4, -0x1

    if-ge v1, v3, :cond_2

    .line 15
    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_2
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oO:I

    .line 17
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;

    iget-object v0, v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooO0o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0o:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0, p1, v1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 19
    iput v4, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oo:I

    .line 20
    :cond_3
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooOO0:I

    return p1
.end method

.method public end()I
    .locals 2

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oo:I

    if-ltz v0, :cond_0

    .line 3
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    return v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No match available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public find()Z
    .locals 4

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    .line 2
    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oo:I

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 5
    :cond_0
    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0OO:I

    if-ge v0, v1, :cond_1

    move v0, v1

    .line 8
    :cond_1
    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0Oo:I

    if-le v0, v1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0O0:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    const/4 v3, -0x1

    .line 10
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0

    .line 13
    :cond_3
    invoke-virtual {p0, v0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO00o(I)Z

    move-result v0

    return v0
.end method

.method public group()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oo:I

    if-ltz v0, :cond_3

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;

    iget v0, v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooOO0o:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0O0:[I

    aget v3, v0, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    aget v3, v0, v1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    aget v2, v0, v2

    aget v0, v0, v1

    .line 6
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0o:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No group "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No match found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()I
    .locals 2

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oo:I

    if-ltz v0, :cond_0

    return v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No match available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "java.util.regex.Matcher"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[pattern="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " region="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0OO:I

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0Oo:I

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lastmatch="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oo:I

    if-ltz v1, :cond_0

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->group()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "]"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
