<?php ?>
<div>
    <table>
        <tr>
            <th>ID</th>
            <th>タイトル</th>
            <th>作成日</th>
        </tr>
        <tbody>
        <?php foreach ($articles as $article) { ?>
            <tr>
                <td><?php echo $article['id']; ?></td>
                <td><?php echo $article['title']; ?></td>
                <td><?php echo $article['created']->format('Y/m/d'); ?></td>
            </tr>
        <?php } ?>
        </tbody>
    </table>
    <div>
	    <ul class="pagination">
	        <li>
	            <?php 
	                if ($this->Paginator->hasPrev()) {  
	                    echo $this->Paginator->prev('< 前へ');
	                }
	            ?>
	        </li>
	            <?php echo $this->Paginator->numbers(); ?>
	        <li>
	            <?php
	                if ($this->Paginator->hasNext()) {  
	                  echo $this->Paginator->next('次へ >');
	                }
	            ?>
	        </li>
	    </ul>
	</div>
</div>